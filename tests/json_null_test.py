import json
import sys

if len(sys.argv) > 1:
    input_json = sys.argv[1]
    with open(input_json, 'r') as f:
        s = json.load(f)
else:
    s = json.load(sys.stdin)

print(s)
for k in s:
    if s[k] is None:
        raise Exception("Field {} is null.".format(k))
