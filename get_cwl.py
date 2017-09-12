import requests
import json
import os


def get_cwl_sbg(app_name, app_revision, token):
    base_url = "https://api.sbgenomics.com/v2"
    app_prefix = "4dn-dcic/dev"
    url = base_url + '/apps/' + app_prefix + '/' + app_name + '/' + app_revision + '/raw'
    header = {"X-SBG-Auth-Token": token, "Content-type": "application/json"}
    resp = requests.get(url, headers=header, data={})
    return(json.dumps(resp.json(), indent=4))


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("-a", "--app_name", help="app_name")
    parser.add_argument("-r", "--app_revision", help="app_revision")
    parser.add_argument("-t", "--token", help="token")
    args = parser.parse_args()

    cwl_sbg_dir = 'cwl_sbg'
    if not os.path.exists(cwl_sbg_dir):
        os.makedirs(cwl_sbg_dir)

    cwlfile = cwl_sbg_dir + '/' + args.app_name + '.' + args.app_revision + '.cwl'
    with open(cwlfile, 'w') as fout:
        fout.write(get_cwl_sbg(args.app_name, args.app_revision, args.token))
