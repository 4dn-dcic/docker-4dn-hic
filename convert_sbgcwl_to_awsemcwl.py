import json
import copy

VALID_KEY_LIST = ['class', 'cwlVersion', 'hints', 'inputs', 'baseCommand', 'arguments', 'outputs', 'steps', 'requirements']

def filter(input_json, key, input_json0):
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
                input_json[key] = [{'dockerPull': item['dockerPull'], 'class': item['class']}]

    if key == 'cwlVersion':
        input_json[key] = 'draft3'
    
    return(copy.deepcopy(input_json))


def run_convert(input_cwl, output_cwl):

    with open(input_cwl,'r') as fi:
        input_json0=json.load(fi)

    input_json=dict()

    # keep only the minimal key list and throw away others
    for key in VALID_KEY_LIST:
        if key not in input_json0:
            continue

        input_json[key] = copy.deepcopy(input_json0[key])
        input_json = filter(input_json, key, input_json0)
        if key == 'steps':
            del input_json[key]
            for subkey in VALID_KEY_LIST:
                if subkey not in input_json0[key]:
                    continue
                input_json[key][subkey] = copy.deepcopy(input_json0[key][subkey])
                input_json[key] = filter(input_json[key], subkey, input_json0[key])

                if subkey == 'run':
                    del input_json[key][subkey]
                    for subsubkey in VALID_KEY_LIST:
                        if subsubkey not in input_json0[key][subkey]:
                            continue
                        input_json[key][subkey][subsubkey] = copy.deepcopy(input_json0[key][subkey][subsubkey])
                        input_json[key][subkey] = filter(input_json[key][subkey], subsubkey, input_json0[key][subkey])


    with open(output_cwl, 'w') as fo:
        json.dump(input_json, fo, indent=4)


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--input", help="input sbg cwl")
    parser.add_argument("-o", "--output", help="output awsem cwl")
    args = parser.parse_args()
   
    run_convert(args.input, args.output)

