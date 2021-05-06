import compress_json
import json

str = open('glyphs.json', 'r').read()


compress_json.dump(str, "ingress.json.gz")
compress_json.dump(str, "ingress.json.lzma")
compress_json.dump(str, "ingress.json.bz")