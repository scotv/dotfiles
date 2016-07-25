def readlines(path):
  with open(path) as f:
    return f.readlines()


def intersection(a, b):
  return filter(set(a).__contains__, b)
