prime = 0x30000003000000010000000000000001
F = GF(prime)
pow = (2 * prime - 1) / 3

mds_matrix = Matrix([
    [F(0x9adea15e459e2a62c3166a2a2054c3d), F(0x187ccb0e2b63d835f7cf33d7555ca95d)],
    [F(0x1da2b56d14370ab50833f82f3966c9d7), F(0x207e36a32b1da58011ae276251516aa4)]])

n_state = 2
n_cols = 10
length = 256

def get_constants():
    """
    Returns a list of n_cols * length pairs of constants.
    """
    from hashlib import sha256
    from itertools import product
    constant_seq = [F(int(sha256('Veedo_%d_%d_%d' % (state, col, idx)).hexdigest(), 16)) \
        for idx, col, state in product(range(length), range(n_cols), range(n_state))]
    constant_pairs = [p for p in zip(constant_seq[::2], constant_seq[1::2])]
    return constant_pairs

def compute_delay_function(n_iters, x=[F(1), F(1)]):
        """
        Returns the result of the delay function computation on x for n_iters iterations.
        """
        assert n_iters > 0, 'n_iters should be a positive number.'
        assert len(x) == 2, 'Input should be of size 2.'

        x = vector([F(x[0]), F(x[1])])
        constants = get_constants()
        for j in range(n_iters):
            # Cube square.
            x = vector([x[0] ** pow, x[1] ** pow])
            # Multiply with the matrix and add constants.
            x = mds_matrix * x + vector(constants[j % len(constants)])
        return x

def test_delay_function():
    res = compute_delay_function(n_iters=10 * 2**12)
    assert res[0] == 0xbb0f72c981ff840c10857b5af871006, 'Wrong x value.'
    assert res[1] == 0xefccc63f8534a514165c22a32bf0911, 'Wrong y value.'

    x = [0x28d5eafa6da4b52d946184fc5cb5aa8a, 0xeacfd8b416443d9a3f8e8d7c4b4f492]
    res = compute_delay_function(n_iters=10 * 2**11, x=x)
    assert res[0] == 0x17ce4ec2dcdd566b7249175175a0e77a, 'Wrong x value.'
    assert res[1] == 0x18ef1f3b87b66c371199d2e41982c9a, 'Wrong y value.'
