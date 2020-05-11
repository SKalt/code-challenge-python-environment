import pytest
from challenge import mode


@pytest.mark.parametrize("n,", [1, 100, 1e9])
def test_all_the_same_numbers(n: int) -> None:
    actual = mode([n] * 10)
    expected = 1
    assert (
        actual == expected
    ), f"the mode of a bunch of {n}s would produce {n}; it produced {actual}"
    return
