import tempfile, subprocess, ctypes, os, sys


def c_wrapper(file):
    print("Compiling", file)
    temp = tempfile.mktemp(prefix="lib-compile-")
    print(temp)
    if subprocess.run(["gcc", file, "-o", temp, "-shared", "-fPIC"]).returncode != 0:
        raise ValueError("compilation failed")
    library = ctypes.CDLL(temp)
    entry = library.entry
    entry.restype = ctypes.c_bool
    def wrapper(s1, s2):
        return entry(s1.encode("ascii"), s2.encode("ascii"))        
        
    return wrapper

testcases = [
("apioform","apioform",True),
("apioform","mforoaip",True),
("apioform","apio form",True),
("apioform","form apio",True),
("bees","goats",False),
("bees","Bees",True),
("bees","B E E S",True),
("fork","spoon",False),
("frog","bees",False),
("FROG","NOT FROG",False),
("fRoG","frogs",False),
]

testcases2 = [(s2,s1,ans) for s1,s2,ans in testcases]
testcases.extend(testcases2)

def test(entry):
    for s1, s2, res in testcases:
        ans = entry(s1,s2)
        if type(ans) != bool:
            print(f"invalid return type {s1,s2,res,ans}")
            return False 
        if ans != res:
            print(f"invalid answer {s1,s2,res,ans}")
            return False
    else:
        print("tests passed successfully")
        return True

if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit("usage: {sys.argv[0]} py <modulename>  or {sys.argv[0]} c <filename>")
    if sys.argv[1] == "py":
        import importlib
        entry = importlib.import_module(sys.argv[2]).entry
    elif sys.argv[1] == "c":
        entry = c_wrapper(sys.argv[2])
    else:
        sys.exit("usage: {sys.argv[0]} py <modulename>  or {sys.argv[0]} c <filename>")

    res = test(entry)
    sys.exit(0 if res else 1)

    
    
