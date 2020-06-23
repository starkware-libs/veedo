pragma solidity ^0.5.2;

contract MimcConstants9_0 {
    function compute(uint256 x) external pure returns(uint256 result) {
        uint256 PRIME = 0x30000003000000010000000000000001;

        assembly {
            // Use Horner's method to compute f(x).
            // The idea is that
            //   a_0 + a_1 * x + a_2 * x^2 + ... + a_n * x^n =
            //   (...(((a_n * x) + a_{n-1}) * x + a_{n-2}) * x + ...) + a_0.
            // Consequently we need to do deg(f) horner iterations that consist of:
            //   1. Multiply the last result by x
            //   2. Add the next coefficient (starting from the highest coefficient)
            //
            //  We slightly diverge from the algorithm above by updating the result only once
            //  every 7 horner iterations.
            //  We do this because variable assignment in solidity's functional-style assembly results in
            //  a swap followed by a pop.
            //  7 is the highest batch we can do due to the 16 slots limit in evm.
            result :=
                add(0xd69f425ce482413b6b805fd25634269, mulmod(
                add(0x96555c9919bc594b949ac9d66c822ba, mulmod(
                add(0x26f54c9179d2a47f3a13aec64c8cc70b, mulmod(
                add(0x2c0f553a3003ab25578c032689155a88, mulmod(
                add(0x116ac94c19516799f3464e8c6d663ec7, mulmod(
                add(0x26b1b6cadffbb135347b4fd3c7faf283, mulmod(
                add(0xbebb3ebd30fc9b666da7db640fc5860, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27c5162058b9199a5cc3a9b9289f785d, mulmod(
                add(0x1ed012981950a5c9a8a3bdb1330f40df, mulmod(
                add(0xb7201ff9e9ab507b7b3ecab7cadce3b, mulmod(
                add(0x11a2615128c511f42fe16a717c38c3f6, mulmod(
                add(0x12243329e86849ea5bf31e8ecc82af7a, mulmod(
                add(0x1ec443a1dba4ce0321bdd19780bd68f2, mulmod(
                add(0x28777ffb28850c8ffd28ed899592e869, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f53f16913b1feb6fa0619ab339ff98b, mulmod(
                add(0x134c2815c567d59d9e70c73f60b30e41, mulmod(
                add(0x98cb3fa07aceab81152bf27e8e8352c, mulmod(
                add(0x4d289ddb701bb9fe1e1d85c02cb4961, mulmod(
                add(0xd3b59f705d22da73b9261b543cfba66, mulmod(
                add(0x8bd090cab4e5e8891511351a7fa571f, mulmod(
                add(0x1655e575f1c2a14edc3cdeeb38c3ff02, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc209c2f92d68ecfaa7bce75fc9f04df, mulmod(
                add(0x1ec1b498089c8c2f9283c53d25d87638, mulmod(
                add(0x1d5c14e6ee48abb4e05e417f07c13554, mulmod(
                add(0xb8dcef474c603a766b0b7ecdbc79a2, mulmod(
                add(0x1b393e8c8a1cf3ed26c10db9c9bf3009, mulmod(
                add(0x25b0a71d22d3d830d1635b778643043a, mulmod(
                add(0x10e1b1701002ffce33f7c465e38f6e48, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2451477fc57f79c0325cbea9be58f073, mulmod(
                add(0x1d59e0e3dbf797b0e7a18de4671a0d10, mulmod(
                add(0x7e7862408121982c9089a8057abaf50, mulmod(
                add(0x1ec0c1c9eba4a623a8cd3a5ed647bbad, mulmod(
                add(0x7cb2815e13ddcfc905c7fecc0e40394, mulmod(
                add(0x1ef9cb83e80e64acb30734feebba3c9a, mulmod(
                add(0x1dcca7a8717a617c9f5169ece7a1a8f0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdc42a9f5bf1bf485a1d03f676b0c6d, mulmod(
                add(0x50ed2c606e3352d0b57253bd60012c3, mulmod(
                add(0x115f2880b244926c58ada5be313eed4f, mulmod(
                add(0x9928fb5e1a08930e7363fd6cbb5199f, mulmod(
                add(0x1711017d1f20894ee5b9b36e304c96e9, mulmod(
                add(0x22745fcb158e9e70d28cd752d9a69843, mulmod(
                add(0x2ef74a313c3ffaaebcaba251569c28cb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x418f70f4ebfa74b70cf3c1651b107f5, mulmod(
                add(0xa273bcf821f270a94b1a3d6e6d4bf7a, mulmod(
                add(0x2aebc82c7154f3b69fa05d799564943a, mulmod(
                add(0x21748e329c686ede0c69da090c90fa59, mulmod(
                add(0x2bd4c0da3e698b48b073fe461d51b1aa, mulmod(
                add(0xb3a16dc0e45986e7070ad82ec6db711, mulmod(
                add(0x1f37820e1523bf9619a46365ee807e78, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2901247e243af812ac7f06718bea4ad7, mulmod(
                add(0x275b16066771425d4ce7c6e26de5a289, mulmod(
                add(0x2d02d362c367448dc6a7d59592b731b6, mulmod(
                add(0x2877733efda0e9c8fb209e4a22b404d3, mulmod(
                add(0x10d4bf9598aea4e705e541b06c81ebaa, mulmod(
                add(0x2cf199377663f3824fd487b8d90cf8a9, mulmod(
                add(0x1a9d37011696dd4ae306a03d7dfe1586, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1adb47f28c2e9388203191a59b708dca, mulmod(
                add(0x5c8aa79e878126ac889b3226a4461c, mulmod(
                add(0xbe42dd8c31f706a7b8631ee5901f6cc, mulmod(
                add(0x1e7ef8f68771bc6db2b0082a5fdbf957, mulmod(
                add(0xd0b5457614525bc6bf037c47d35b4d5, mulmod(
                add(0x2fc02a7b9dce0defc42b0d752aeb9193, mulmod(
                add(0x2c0deacfc35d5ff55b31fbc9162733e3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29582d71b2c1291357df7a235a87bbd2, mulmod(
                add(0x133ca4d3b3d89fa3f563b3b142911a6d, mulmod(
                add(0x1e1c581b074ea949a997d74abac5ca18, mulmod(
                add(0x139816c908379a69f7e041b8d33e0376, mulmod(
                add(0x257a1e638904da12f290247a005a458d, mulmod(
                add(0x20ca6acae7ca7ab219056f19a3283a7e, mulmod(
                add(0x299c2521eca5d44c73fe69bbaa37c155, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd8c11ad493a345ff46d9a694c8dc3c7, mulmod(
                add(0x1d90b6c09a263cc059b8124fa428cb13, mulmod(
                add(0xaf3e0840e42d1d96872585a8f197078, mulmod(
                add(0x2c6872aa41ab2104dc71357c1978fe94, mulmod(
                add(0x257d85473b44a086050821251f6ac10f, mulmod(
                add(0x611790719e620ca0399ec97ef34b39e, mulmod(
                add(0x45efec0df66f312e5cc6ea81afded5e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e76d7ae8b27e764f2e6672f1b2cc8b4, mulmod(
                add(0x13942ca830f7ac84ed1e27b683ae982e, mulmod(
                add(0x1744549cfde8261787c0c8afae41aa05, mulmod(
                add(0xb64b079931a093e99821eba77d6a9e6, mulmod(
                add(0x27d4cfc1942b372a8efd561c934a51a0, mulmod(
                add(0x1c0eab16c0045d65a61b7daeeb64fef9, mulmod(
                add(0x6f7dd6b9903bb7dc753501d1588a5a3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x986e9b32191bebefc2f2c8803ad78d6, mulmod(
                add(0x238b159916c75f689a08c68a93b0e556, mulmod(
                add(0x24197d6b9f794cf9ae40476850b06ee2, mulmod(
                add(0x1f1cd241cdea29f027cfa1e74145bdb9, mulmod(
                add(0x199287cc96f2ae2cd984e2083409f004, mulmod(
                add(0x1d2241fb5d7b32d2cb39787ab231eebd, mulmod(
                add(0x1494b9fa564dc0f6290620985db5a9cd, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a1a50e43eb82a7c86576783be367495, mulmod(
                add(0x73f3a4541c3dc44ca226d0527f4cd9d, mulmod(
                add(0x1c5d2778adc162ba04aecf372687f555, mulmod(
                add(0x14b6d6f29312b4292d5abae1e4b8dc31, mulmod(
                add(0x111a6bb4cc74e0ff4c26c15a6391d7da, mulmod(
                add(0x1afb2f4b05f772ef1142993ee26695d4, mulmod(
                add(0x2a6215b3d88ac05a82789f53f97faf26, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2dd30e1e59b8a51c1d2c0bd5fdf53882, mulmod(
                add(0x163b3c330d7464f983abcf8333f8a2c4, mulmod(
                add(0x103ecb54d87ed54cf38fe5cb977d6ede, mulmod(
                add(0xb2586a102dcfc26a15459742398b6c8, mulmod(
                add(0x1430dd87dca1548523769010f4d8de80, mulmod(
                add(0x1b69c19be3d3f8b256e106e4e6639f1d, mulmod(
                add(0x260a2c48636b3166e8cadd6b4d5c3537, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1da590294fbf2cf8ac4b630158d8ecf1, mulmod(
                add(0x25304ec475381e3f9479d285128e88e2, mulmod(
                add(0x1119e34123c5af4240c79d0eb6a5f7bd, mulmod(
                add(0xd2b494fae7ba6c6781ecab2f41fc25f, mulmod(
                add(0xc75abb1ba0161e0b8ec4ded4d505402, mulmod(
                add(0x2955b22e8e00f06e8e011b9b5dfabeb5, mulmod(
                add(0x74322ade280b3dc7606207a2be7d64, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20f4c9b3af38a1d4168bd31dfa17a918, mulmod(
                add(0x147d05b5185fb54868c8f0d46db599f2, mulmod(
                add(0xbb340eb85934e83a11cddd1023321fd, mulmod(
                add(0x1b33a81e29faf138c75875410ddb7f55, mulmod(
                add(0xccfabe4fa4f802c7b458e523d6b9e08, mulmod(
                add(0x83889297e6656371ff914eed461215e, mulmod(
                add(0x7ac195a19d277dcaeb6a1ee1868bea5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8a749bde6f4a47cad3c760e825b3bd3, mulmod(
                add(0x2feb548fd373fe744fcbe876c4e6b31d, mulmod(
                add(0x2c9f27603cd658cb2e64042eb7067050, mulmod(
                add(0x2f82e67b4f7788f204e50b3e709101d6, mulmod(
                add(0xa8408de433f2b72f48e418592709e2, mulmod(
                add(0x8c4743f9a9aaef38bf711b080ab778d, mulmod(
                add(0x141f8157c7980283d297cf0dbcd02268, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8a93993e4fd6d7e1b56cb7144160ebe, mulmod(
                add(0x5d8467845c4bbd3e9f671f9be90b3bb, mulmod(
                add(0x18314af442037100018702fdd41e67c5, mulmod(
                add(0x1c471723a91ae153dc973a56953462a3, mulmod(
                add(0x2f781a24df003e45339f7b1b7589a8f6, mulmod(
                add(0x28f3adfd7bf84b9002de1bc9806f54d2, mulmod(
                add(0x2c273f7e65f3f03cf12f20252ed0696d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b834481f17b18a2892349642894c9f3, mulmod(
                add(0x141f403787d539dd681cd10dbd94b627, mulmod(
                add(0x2363c3407be0962b4ad6b9f5cb41850f, mulmod(
                add(0x2b36844b66da41331a0dc957dcc349b9, mulmod(
                add(0x1a7ccf9e06d651b1df159a0607eff703, mulmod(
                add(0x292231bb4c3e873652d255da24c0f7cd, mulmod(
                add(0x24febb9566cb975ef7513535b381b2f2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x262763b9da8b8c258d04f13802e8b2f2, mulmod(
                add(0x2bfb9086edaba2efc51fe40422041aac, mulmod(
                add(0xb57e6fcaf183adf4210ecf39281c460, mulmod(
                add(0x29cd6b2d90c0f36e8c1800b8a5c8892d, mulmod(
                add(0xf18b310adb3f567ed5293b14582987c, mulmod(
                add(0x740ad08ca9abace34fe44e1f1f88b6a, mulmod(
                add(0x2cd208dd38688cb5f8e6410727cd8efc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3fda1b87acb0dc78b62aba34f7ad4b8, mulmod(
                add(0x226ed6454cb29968ecd3bf28608913c7, mulmod(
                add(0x26981c57c975205497bd08e802759b60, mulmod(
                add(0x16d1c346ce068f6f0a400261a8ce182a, mulmod(
                add(0x29852d47e586825d6bd579f6e7b53999, mulmod(
                add(0x2f08e4a2cc94fd4687e6b67c551bc8d, mulmod(
                add(0x29a023870c508e1ce37d79a967ca91ff, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f4a25fbdc759e912e55f0c2a379ea11, mulmod(
                add(0x5db8597bd27887b880d9c381596c681, mulmod(
                add(0x165c631699500f125034ca217512cc82, mulmod(
                add(0x1f365b04c4b3513734b57a3debe769e6, mulmod(
                add(0x8dc85bcfc973a55d9c58acb9e79a1ac, mulmod(
                add(0x1376af3441b6a19a1bf1f4f2fa369c2a, mulmod(
                add(0x1b344cfcebc034381f24a26df59a3048, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5cf7d14900e9ffe870b04ac83a04a41, mulmod(
                add(0xaa0bb4893f3dd0c0e3ae014c83a9537, mulmod(
                add(0xc7ba6d9c611b123f5d4bc25aaac5526, mulmod(
                add(0x2d17e1b85a90a2b58c74e82fb863cf7d, mulmod(
                add(0x2346c758a5b2579f7628738b93d58b81, mulmod(
                add(0x29a8169c911b3d71654052c904e5d5e9, mulmod(
                add(0x15a148e4c98a5e26309ee09e7792a059, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8ce6d57e15da4b905ae187a32de0a88, mulmod(
                add(0x2db541008ad42f03c84ce569e83d5b99, mulmod(
                add(0xbe71553669e5a23cd912b07cc6a284e, mulmod(
                add(0x7ce17fead61de43407da65abbaa4e9d, mulmod(
                add(0x1bcbc4e900df4f6f0ee77f12e6acc6e, mulmod(
                add(0x1ea4f1c85e4c5797fc8cd0391002008c, mulmod(
                add(0xfceb34781787d716758a52c0b1ce6c0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x939afc794be1d180dae30ae7823495e, mulmod(
                add(0x2a689bdc6744ee8e7247c7a73ea04130, mulmod(
                add(0x2b2daeb26ae947eba2e46f66f62c0763, mulmod(
                add(0x18f45ff2c4d2a7554d63435a1d16a0b1, mulmod(
                add(0x12e0fbbdde34c1d54b434c636517118f, mulmod(
                add(0x166a40cdb7cd55bd2811f226fa6ffcb6, mulmod(
                add(0xd796d0e6fa62d6752d99cfe3a80fd79, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8bd9992bf33ebb78877c1d9c1c6f237, mulmod(
                add(0x6df1b6a9fb4e153507f8a735f6200, mulmod(
                add(0x2c2c0e6fa18345cc859cd9b29cb4ed5b, mulmod(
                add(0xacc7d97bc6f3262f8b61682480191b5, mulmod(
                add(0x1bf63a46b158f81fb0979a581bf19ca3, mulmod(
                add(0x1b0f1802d7e0f794a4899c99fa402b1d, mulmod(
                add(0x178710baf0eac7f05250b9505dd1ed45, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb62a97ee556768c39c26dfb04e23112, mulmod(
                add(0x2edb4d6fcfe5a398d145fc23a429dc0, mulmod(
                add(0x1baad9768d11b4b522f5f576118817f, mulmod(
                add(0xc0951fbf241c5495a7bc220f059f29, mulmod(
                add(0x1931e46c3b712e795e1eb4e55b1fb25d, mulmod(
                add(0x2d06072a4ecb3e76c7d995e72916f0c4, mulmod(
                add(0x284a795e8c72ea94f2a055137d70090e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ee56482a3042e15771cd438eb4f8efb, mulmod(
                add(0x2bfd7a78fc7a45686e09cb3909a0d2cb, mulmod(
                add(0x24bc4ad763951007cc6dab4cc8adeeb0, mulmod(
                add(0x133cca8ef7044dc5635111d5c2958da1, mulmod(
                add(0x26248657563b00608691f1843bc298e6, mulmod(
                add(0x2ffc7981b90e699b28dcef6149090114, mulmod(
                add(0x1e1b577737a840f72185ac08c0f21cbe, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x13eee05001e22d80cbe41edb8822c3c4, mulmod(
                add(0x1bb0ae7ceab7566512b09ab49588bad9, mulmod(
                add(0xda2a7d70666f437e8ac66309ab0e91e, mulmod(
                add(0x205876c1e6bc32f91e940ba735eeee19, mulmod(
                add(0xe35d35ae72adc718cf3060c206c0636, mulmod(
                add(0x2ebe51cc7acfbd0a5514b9bc1acd1e4d, mulmod(
                add(0x171bb01bfc2e6ccae3fbbfd00b707eff, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb099115fdce52d2076a17621b50d722, mulmod(
                add(0x20fb8fcb7693096d3921692832701451, mulmod(
                add(0x26303beb010bb417f742ce8bfe9d06f5, mulmod(
                add(0x25483fd65199f9e663214b0ee74cfc94, mulmod(
                add(0x165c8de89691ec2dc073001c74aaced6, mulmod(
                add(0x2413eb9a4873726ab908f4efcfb6cba3, mulmod(
                add(0xa35c0e8494983552b8aa60cdfa7b8f7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xda0792e4c92a6787168ea45f377db7a, mulmod(
                add(0x2f064fc1d01902308106870c2f700f7c, mulmod(
                add(0x8ba73072b27625eb30217711f7bab52, mulmod(
                add(0xfc38a0c6b350aed38cc7126732fb66c, mulmod(
                add(0xe550bb07b2c87f2919ba159de87c54e, mulmod(
                add(0xe07dd3c4f12b9249a9022e474bf2ba9, mulmod(
                add(0x133334710a24e85d26d61153a44bd872, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2afdce19910528b85734a3516584106a, mulmod(
                add(0x112196a0fef6dac44a1c2c24f80000b3, mulmod(
                add(0x2a0179aec7067bf10ac655201acaa240, mulmod(
                add(0x80dbda6acb8de8b2fbd96986c31696d, mulmod(
                add(0x4f7652421d0af5598fd94782299ec8f, mulmod(
                add(0x1a2463359edf380f3d390b6e74058995, mulmod(
                add(0x2aca027582611242caacce3a27b2091e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1630c209b4f0c7e6f841010fb30abf22, mulmod(
                add(0x82d84f8eac93629666a0dd0a5f71b8d, mulmod(
                add(0x30ab91fe096f2c06e0cc91aa35f0506, mulmod(
                add(0x217891b341c88a39d6b2376cf5ad6417, mulmod(
                add(0x90050d54b6825f8c3ca9710937b6d56, mulmod(
                add(0xa210e9084be09ac4d129390f8fc856c, mulmod(
                add(0x128e8ca81446bfcc8c0fa02d185d2d98, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a42229d673afb571cfcb84e9fd6861d, mulmod(
                add(0x2b8eb6362b75e82635efa082f59dfa4c, mulmod(
                add(0x25711f136352275de05c14df295a19c5, mulmod(
                add(0x2825c899b69836ba9470a45ee026ff0d, mulmod(
                add(0x28143019a934151ea418f2799fafcff6, mulmod(
                add(0x13ef2dca57039ecf87592cb004564410, mulmod(
                add(0x28ad02bdf8d759b468106d6aad09c8d4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x126e75caa3fb206da9df70892160c1d3, mulmod(
                add(0xec2a346441aa8888ed53df069671065, mulmod(
                add(0x27c3f080b34a671ba7e0d51a6c779622, mulmod(
                add(0x2e5ace237ed84f59808d023c9068688e, mulmod(
                add(0x136e5e4d393783b7ea4606ac4dfcd98b, mulmod(
                add(0x4b89b9557f8256985b72d933372fd72, mulmod(
                add(0x2e8a3d18068434cc1924039c8c38f699, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x203485c6cc0b12e359bdf024533a434e, mulmod(
                add(0x374e751502a49358e9ca560cad02ebd, mulmod(
                add(0x273e7c4a9fe3c18ef2a953c6fb96c711, mulmod(
                add(0x2e2bf5e0fb8a0cca72920b16fb53e95b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
