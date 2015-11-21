#! /usr/bin/env python

import sys
import os
import glob

def main():
    if len(sys.argv) < 3:
        return

    depth = int(sys.argv[1])
    keyword = sys.argv[2]

    dirnames = getdir('.', keyword, depth)
    print ' '.join([d[2:] for d in dirnames])

def getdir(root, keyword, depth):
    if depth <= 0:
        return []

    result = []
    if depth > 1:
        try:
            dirs = os.listdir(root)
        except OSError:
            return []

        for dir in filter(os.path.isdir, [os.path.join(root, d) for d in dirs]):
            result += getdir(dir, keyword, depth - 1)

    result += filter(os.path.isdir, glob.glob(os.path.join(root, keyword)+'*'))
    return result

if __name__ == '__main__':
    main()
