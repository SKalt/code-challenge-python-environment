import pytest
from challenge import mean


@pytest.mark.parametrize("n,", [1, 100, 1e9])
def test_all_the_same_numbers(n: int) -> None:
    actual = mean([n] * 10)
    expected = 1
    assert (
        actual == expected
    ), f"averaging a bunch of {n}s would produce {n}; it produced {actual}"
    return
