# Init for `interactive_python` alias.

from typing import Callable, Iterator

import sys
from sys import argv as cli_args

from time import sleep
from math import *
import itertools

import numpy as np

from pipe import Pipe, take as take_, tail as tail_, skip as skip_, dedup as dedup_, uniq as uniq_, permutations as permutations_, traverse as traverse_, tee as tee_, map as map_, filter as filter_leave_, take_while as take_while_, skip_while as skip_while_, groupby as group_by_, sort as sort_, reverse as reverse_, t as append_, transpose as transpose_, chain as chain_, chain_with as chain_with_, islice as slice_, izip as zip_


# abcdefghijklmnopqrstuvwxyz

def avg(l: list["T"]) -> "T": # pyright: ignore[reportUndefinedVariable]
    return sum(l) / len(l)

def diff(a: int | float | complex, b: int | float | complex) -> float | complex:
    return abs(a-b) / (0.5 * (a+b))

def filter_remove(it: Iterator["T"], pred: Callable[["T"], bool]) -> Iterator["T"]: # pyright: ignore[reportUndefinedVariable]
    return (x for x in it if not pred(x))

def frange(start: float, end: float, step: float):
    x = start
    while x < end:
        yield x
        x += step

def index_of_max(l: list["T"]) -> int: # pyright: ignore[reportUndefinedVariable]
    return max(enumerate(l), key=lambda x: x[1])[0]

def lerp(a: int | float | complex, b: int | float | complex, t: float) -> float | complex:
    return a*(1.-t) + b*t

def split_at(l: list["T"], index: int) -> tuple[list["T"], list["T"]]: # pyright: ignore[reportUndefinedVariable]
    return ( l[:index], l[index:] )

def split_at_percentage(l: list["T"], p: float) -> tuple[list["T"], list["T"]]: # pyright: ignore[reportUndefinedVariable]
    return split_at(l, round(len(l) * p))

def std_dev(l: list) -> float:
    avg_value = avg(l)
    return sqrt( sum(map(lambda x: (x-avg_value)**2, l)) / (len(l) - 1) )

def unzip2(xy: Iterator) -> tuple[Iterator, Iterator]:
    xy1, xy2 = itertools.tee(xy)
    return ( (x for x, _ in xy1), (y for _, y in xy2) )


# Pipes:
filter_remove_ = Pipe(filter_remove)
index_of_max_ = Pipe(index_of_max)
list_ = Pipe(list)
split_at_ = Pipe(split_at)
split_at_percentage_ = Pipe(split_at_percentage)
std_dev_ = Pipe(std_dev)
sum_ = Pipe(sum)
unzip2_ = Pipe(unzip2)


if __name__ == "__main__":
    print(f"Python {sys.version} on {sys.platform}")

