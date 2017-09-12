import json
import copy

VALID_KEY_LIST = ['class', 'cwlVersion', 'hints', 'inputs',
                  'baseCommand', 'arguments', 'outputs', 'steps',
                  'requirements']
INPUT_OUTPUT_VALID_KEY_LIST = ['id', 'type', 'source', 'description',
                               'inputBinding', 'outputBinding',
                               'sbg:toolDefaultValue']
STEPS_VALID_KEY_LIST = ['inputs', 'outputs', 'run', 'id']


def filter(input_json, key, input_json0):

    # remove non-valid input/output subfields
    if key == 'inputs' or key == 'outputs':
        for i, item in enumerate(input_json[key]):
            for subkey in list(item.keys())[:]:
                gg = input_json0[key][i]
                hh = input_json[key][i]
                ggs = gg[subkey]
                if subkey not in INPUT_OUTPUT_VALID_KEY_LIST:
                    del hh[subkey]
                if subkey == 'sbg:toolDefaultValue':
                    if ggs.isdigit() and 'type' in gg and 'int' in gg['type']:
                        hh['default'] = int(ggs)
                    else:
                        hh['default'] = ggs
                    del hh[subkey]
                if subkey == 'source':
                    if isinstance(ggs, list) and len(ggs) == 1:
                        hh[subkey] = copy.deepcopy(ggs[0])
                if subkey == 'outputBinding' and 'glob' in ggs:
                    ggsg = ggs['glob']
                    if 'script' in ggsg:
                        hh[subkey]['glob'] \
                            = expr_convert(ggsg)
                    elif ggs['glob'].startswith('$job'):
                        hh[subkey]['glob'] \
                            = expr_convert_noscript(ggsg)
                    else:
                        hh[subkey]['glob'] = ggsg
                if subkey == 'inputBinding' and 'secondaryFiles' in ggs:
                    ggss = ggs['secondaryFiles']
                    hh['secondaryFiles'] = ggss
                    del hh[subkey]['secondaryFiles']
                    for j, scFl in enumerate(ggss):
                        if 'script' in scFl:
                            hh['secondaryFiles'][j] \
                                = expr_convert(scFl)
                if subkey == 'outputBinding' and 'secondaryFiles' in ggs:
                    hh['secondaryFiles'] = ggs['secondaryFiles']
                    del hh[subkey]['secondaryFiles']
                    for j, scFl in enumerate(ggss):
                        hh['secondaryFiles'][j] = expr_convert_core(scFl)

    # delete any sub-field that contains 'sbg:'
    if isinstance(input_json[key], dict):
        for subkey in list(input_json[key].keys())[:]:
            if subkey.startswith('sbg:') is True:
                del input_json[key][subkey]
                continue
            if isinstance(subkey, dict):
                for subsubkey in list(input_json[key][subkey].keys())[:]:
                    if subsubkey.startswith('sbg:') is True:
                        del input_json[key][subkey][subsubkey]

    # delete any sub-field that contains 'sbg:'
    if isinstance(input_json[key], list):
        for i, item in enumerate(input_json[key]):
            if isinstance(item, dict):
                for subkey in list(item.keys())[:]:
                    if subkey.startswith('sbg:') is True:
                        del input_json[key][i][subkey]
                        continue
                    if isinstance(item[subkey], dict):
                        for subsubkey in list(item[subkey].keys())[:]:
                            if subsubkey.startswith('sbg:') is True:
                                del input_json[key][i][subkey][subsubkey]

    # keep only docker-related hint item
    if key == 'hints':
        del input_json[key]
        for item in input_json0[key]:
            if 'dockerPull' in item:
                input_json[key] = [{'dockerPull': item['dockerPull'],
                                    'class': item['class']}]

    if key == 'cwlVersion':
        input_json[key] = 'draft-3'

    if key == 'requirements':
        for i, item in enumerate(input_json0[key]):
            if 'class' in item:
                if item['class'] == "ExpressionEngineRequirement":
                    input_json[key][i] \
                        = {'class': 'InlineJavascriptRequirement'}

    return(copy.deepcopy(input_json))


def run_convert(input_cwl, output_cwl):

    with open(input_cwl, 'r') as fi:
        input_json0 = json.load(fi)

    input_json = dict()

    # keep only the minimal key list and throw away others
    for key in VALID_KEY_LIST:
        if key not in input_json0:
            continue

        input_json[key] = copy.deepcopy(input_json0[key])
        input_json = filter(input_json, key, input_json0)
        if key == 'steps':
            # del input_json[key]
            # input_json[key] = [{} for i in range(len(input_json0[key]))]
            for i, item in enumerate(input_json0[key]):
                gg = input_json0[key][i]
                hh = input_json[key][i]
                for subkey in STEPS_VALID_KEY_LIST:
                    if subkey not in item:
                        del hh[subkey]
                        continue
                    hh[subkey] = copy.deepcopy(gg[subkey])
                    hh = filter(hh, subkey, gg)

                if 'run' in item:
                    app = gg['run']['sbg:id'].split('/')[2:4]
                    app.extend(["cwl"])
                    hh['run'] = '.'.join(app)

    if len(input_json['requirements']) == 0:
        input_json['requirements'] = [{'class': 'InlineJavascriptRequirement'}]

    with open(output_cwl, 'w') as fo:
        json.dump(input_json, fo, indent=4)


def expr_convert(x):
    converted_str = "$(" + expr_convert_core(x['script']) + ")"
    return(converted_str)


def expr_convert_noscript(x):
    converted_str = "$(" + expr_convert_core(x) + ")"
    return(converted_str)


def expr_convert_core(x):
    converted_str = x.replace("$job.", "")
    return(converted_str)


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--input", help="input sbg cwl")
    parser.add_argument("-o", "--output", help="output awsem cwl")
    args = parser.parse_args()

    run_convert(args.input, args.output)
