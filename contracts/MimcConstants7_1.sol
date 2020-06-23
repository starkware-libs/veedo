pragma solidity ^0.5.2;

contract MimcConstants7_1 {
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
                add(0x1d133256d7778c9e1d1a36b83bb6193d, mulmod(
                add(0x15325e9e47e2705be0a7652368b0f97d, mulmod(
                add(0x23b029f0b4aa24ba53daf5e6a9374aac, mulmod(
                add(0x2582a6118269ee7383c514bacded2994, mulmod(
                add(0x1bb2fe7bf7493651f6b60093dc9f47d8, mulmod(
                add(0x26572b78a2283297f6e675e0ed70d5fb, mulmod(
                add(0x1ee528b4c8b80aff42a6df0b4d069039, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ca960662711db494f01065b6f1db04a, mulmod(
                add(0x11f14c0e221fda99ec8804e8d5cf65e5, mulmod(
                add(0x22b6534a960bf3e7caf36b8fbf9be769, mulmod(
                add(0x92aaef0a103edc7854d425067974cde, mulmod(
                add(0x8e391ce0dfe5f7c884863eb531c7f66, mulmod(
                add(0x1df52358f67d77ea2e2ae6e6d7c9c9ab, mulmod(
                add(0x22478ae85a7876263f59599c72350eb0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8dcd745145b1d0a8f53fb0e23b0ba6b, mulmod(
                add(0xc78605a6e62b3c444ab5803dcb40425, mulmod(
                add(0x2a7148d4dd4989e934aa21d8a8f43a54, mulmod(
                add(0x17a1b89f13f13f1bbcc4de370943413d, mulmod(
                add(0xf6b2a82e3c9b154a2dacb4d5e78d946, mulmod(
                add(0x21843901d8df68ba6f068a6bd8dd48c3, mulmod(
                add(0x14e1510dd801de771f62ba3ad8803fd, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x88b93e0bc45980da8a04f8ac086903e, mulmod(
                add(0xcce4f78a3ad2d7cfa67be09433c7911, mulmod(
                add(0x194ca83a6a58e5ccda73986b93147d6e, mulmod(
                add(0x12773105c439ff5de36fa1658d51c0ff, mulmod(
                add(0x2875a6675a7d07254ad8539ac7d2fc06, mulmod(
                add(0x2580e3bc44b842e9a6c2982dd6e5022f, mulmod(
                add(0x1aa74a4d411ea3794604a235029d907d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ec968b861f1cad388219d7f7d9140f2, mulmod(
                add(0x7796199eecf2f66d89cf824d3c68735, mulmod(
                add(0x12cac09075b68aea19282c4d8f82a71f, mulmod(
                add(0x2b18185696c9a04403ea6092dec6ae64, mulmod(
                add(0x153b062c719577c8005155c31e40bc01, mulmod(
                add(0x19d73ca4707b70383edd27b27a7c9fbe, mulmod(
                add(0x2348e61ca62c324eb1424853635bfc2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23b16de9f3cc6fd6355261fcf9446c3d, mulmod(
                add(0x1e5f9a97136b4a95e336f22c92ac8a58, mulmod(
                add(0x2b26ed9228c330b6cceb902e40291df7, mulmod(
                add(0x25a368f16bf98174cd65e6c7ebb5613d, mulmod(
                add(0x11f78cf7275d0b75ec3c6a505a21c2a2, mulmod(
                add(0x2ac0ccf2566a023c6d8b10e50266c906, mulmod(
                add(0x2c1dd46d79c6df6e7bc91826d3b95004, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23aca1de7907d8d486b78e2847dd0dbc, mulmod(
                add(0xfa2242cf9ae6f8403834519d4a83979, mulmod(
                add(0x2f9c9bcaafb41e6f5701ac472d158dcd, mulmod(
                add(0x11bced863f0f0a58d2fcdfd402145d34, mulmod(
                add(0x1e96827efe7d38dda460ef2cfa2ac649, mulmod(
                add(0x23cc44fb95fb6091e958e9d3461c54af, mulmod(
                add(0x17414f916c14b02f47befa43271d803f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x6963b5f04e1bad47a7e2d063dbf6220, mulmod(
                add(0xa184b27fc16fa3eb9390693cd1d3692, mulmod(
                add(0x2f829b76de94b771e374e19dafcd9c6b, mulmod(
                add(0x2f4608271f75f46251a8f07a462004ec, mulmod(
                add(0xbf062f724269cf4fd0a11a68f97cf64, mulmod(
                add(0x9fa168698509ef5ce6c33352ca23806, mulmod(
                add(0x17802504c467c0b2ce2afb3d0e6d4753, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23a4131fc85942ce554ca63e8890745f, mulmod(
                add(0xd0970a50b49cfbc31cb02dd9681f631, mulmod(
                add(0xb2aa6677e9ed78b0b913967d63732b3, mulmod(
                add(0x5ef5cf451a020e622338e8bde38dc9f, mulmod(
                add(0x28b81e422f0711a59ea133b99286c478, mulmod(
                add(0x278ad4df0f5ee8861c8d6e0047b158e8, mulmod(
                add(0xec0076dd6ad571d6d58c60d5829942, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5f04a488bf9e66813655f696c8143aa, mulmod(
                add(0x1922d8016d468d45432c75cdf942ecc4, mulmod(
                add(0x15c23e1181d312a914a246985f94b543, mulmod(
                add(0x2514fb01da765d55534afa3f7131dab6, mulmod(
                add(0x1aa612dd231a129ce53cf2e9c3ddd5b2, mulmod(
                add(0x1d0cbd82939e20894b46123d4fd7873e, mulmod(
                add(0x3905128628e09ea19efc9d7d392a0c0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x10f09e0385ec20ba80d0e9f6ef697172, mulmod(
                add(0x22f90c4f471d7edb23dd682d34acc467, mulmod(
                add(0x2e9745e186279a986f99a771b2fd72cf, mulmod(
                add(0x2dc9b50c161832c130227dfeb984e43d, mulmod(
                add(0x2a5788d924522befc084d9acbb9c5ab3, mulmod(
                add(0x260fc1cc8e795f94562f6cef16e6baef, mulmod(
                add(0x13eba31bd268c7fb4ca689ab0fe5c6a2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c04783696b3e8c3a6b297ddd427c69a, mulmod(
                add(0xe3bc7965967b6739e505762e592ae72, mulmod(
                add(0x25f596bf787d9fbd48215a35aac1b46f, mulmod(
                add(0x273b16ebbc3a3dc38fbcc90c45e156c1, mulmod(
                add(0x225934a25920ea4a9f0167bc9e515f0e, mulmod(
                add(0x15b5a59ece879e322204e2d5afbf9e25, mulmod(
                add(0x24b8106825b149bd7951ef92b0d01a01, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x149ee8f165d1073771c4332fafab9c3b, mulmod(
                add(0x23b29590506c61e1c4f4d7bb95404d29, mulmod(
                add(0x28652fe7e321900b925a47d814b35ff6, mulmod(
                add(0x258fad5cde74f2137ff75f8abd086da4, mulmod(
                add(0x1d9b37c6f8782091adf22228b2e0204b, mulmod(
                add(0x274cf7cea9fe15097713e5d87e4c585, mulmod(
                add(0x9b985f9b907043c83f500dc41af722c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1792cefd04af6047329bb613207138e4, mulmod(
                add(0xad4c5015e99171687a88254d7d47d7c, mulmod(
                add(0x2f192e90b4506803b989380cea42bdff, mulmod(
                add(0x1cf30674238a076ac034c5cfc17d5f5b, mulmod(
                add(0x26b4552fc3e17689bbc84c389e5cbfa2, mulmod(
                add(0x9baf6416c6e6bdf8a799d9d4742fa0b, mulmod(
                add(0x32a8a9c60c656d280419b33e3faa460, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20bfe15f6de516dcfcf3c05e92bde637, mulmod(
                add(0x2c86f23bdd3b5b718c77ba1a06532812, mulmod(
                add(0x15a575be55b4c08369b10027b1686aa8, mulmod(
                add(0xf30a0e006cc7f2ead9d54f38ec20149, mulmod(
                add(0x7477b0ac6f0049620e2f82879c8529f, mulmod(
                add(0x1f14fdda4ed1d6db0395aba871454436, mulmod(
                add(0x20c157f3009247f3d53c40813cdfbc8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22a266cb98c8c408e70fa97b3a1d86c0, mulmod(
                add(0x2df50f3ae2761c4c18c44f22f0b3de0c, mulmod(
                add(0x2ba068da03779a2c1f8208a286b58fa0, mulmod(
                add(0x11f4470e1c5ce7e0c5025b24b797d467, mulmod(
                add(0x10e65d765c17bc190330ca0213b4b119, mulmod(
                add(0xdb81e76c8365e252df0db6c2bd3d9f8, mulmod(
                add(0x253fc8a86a855134f88ee18ed21386, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x9ebf2a910b6b7a04078c583374e2748, mulmod(
                add(0x2d61344295a9c1ce8aea3b3245a69075, mulmod(
                add(0x14dc53ad5efdc904eb4a50f530444aa7, mulmod(
                add(0x217b716522b5459823c63c899aa5d01, mulmod(
                add(0x2759faa545c9fc73efffa17c11e8ca4, mulmod(
                add(0x1ff30f3f8900727d4d9193c7e77c1edf, mulmod(
                add(0x86350c0b25137cada38c1344a6952e0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc87a7596d9e6bb823b4328ff2f623b1, mulmod(
                add(0xc1de095d080dd434563c49be7ef1568, mulmod(
                add(0xf79a8f752232e8617a1e05bbbfbf4d, mulmod(
                add(0x2abca2d27dffb036cf6321b5f9cc3b09, mulmod(
                add(0x22558cbdd31bd51efeec73b121e2784c, mulmod(
                add(0x2dcffc35ab417e5f536557fcd8130494, mulmod(
                add(0x2daf43008958d4b9b51f9f2cfae12fbd, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4da75d2c7f28998881e9d41c3cd603c, mulmod(
                add(0x1c5fbb722fb48f3f4ec36fe364bafc1a, mulmod(
                add(0x1c1479a8e4ccd6891dfc97a24b89120b, mulmod(
                add(0x1361f02aca2b822963adaa7181342c27, mulmod(
                add(0x45d4bbd31a07b2eb308a09c28732eba, mulmod(
                add(0x1db649f048bd8b30a2b47256e6f88b55, mulmod(
                add(0x2aeff6592e2acdcc742380b501ace514, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b8c5997835112d81a389f84d418245c, mulmod(
                add(0x2050f67fd015696337d306525efbd9a4, mulmod(
                add(0x543b766d6f5e607805b590d71533351, mulmod(
                add(0x10a8570ade53c950130c345ad72bb7ca, mulmod(
                add(0x896dfba4285915e875b5fcfca7acbee, mulmod(
                add(0x10efec3d0997a7e22f08754dcf28f821, mulmod(
                add(0x16433fc09254342860376eda11565aca, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11e5ead7ce4da73cb45e449a1c8a31ff, mulmod(
                add(0xeac364a32509edf69a312f65f1b74f6, mulmod(
                add(0x15bdc3c808cc750a20e308cf0ac29da9, mulmod(
                add(0x1444a966a22b42539733b33a8f29b7cc, mulmod(
                add(0x1936bc107859e0d7f6463fd82058f4fe, mulmod(
                add(0x2598e40cc00b6cdf234275a21ca7d8ef, mulmod(
                add(0x1f2434051ecafe104a5ed0388230bdeb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ce9ffc797e6c67f1560d6be3c021c5e, mulmod(
                add(0x1199b0486d93ca2b55ac064132c57bac, mulmod(
                add(0x2ed63b9abb71ca24ba8272aeee2cad7e, mulmod(
                add(0x265e71ac52f8521e89b9165d9415fdae, mulmod(
                add(0x2630a4b65b1d3b84a1d27356675aeec8, mulmod(
                add(0x6c2f899bd80063196b28faa6d77af11, mulmod(
                add(0x1f0372ec5b250126f7ba7bdabe0a951e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x295f7f3003bb984d667bb1bae38c4de, mulmod(
                add(0x1944c7ec1d287d8446673c325dd1d022, mulmod(
                add(0xee25c99f77cb11a74e218391a1a736, mulmod(
                add(0x1d7c594a7deecaaee484504b0a97cb89, mulmod(
                add(0x1ce9cf972cc8a8b142264c8d871cf453, mulmod(
                add(0x933f3e0d78ec7dc27eef2e2253111d8, mulmod(
                add(0x13b7c64922a58970a15c2b60a62f6332, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2787b1c27650d208cdcf723d01d12af8, mulmod(
                add(0x18655d11c1b1153dd1fa7d45a2d7d704, mulmod(
                add(0x2974ac0d71962d836dd32ec8d7fd97b1, mulmod(
                add(0xd129ca65c42d6d3fc9b80e6a9153aa8, mulmod(
                add(0x1c82a5bf60b97a0f12b96e1304504bec, mulmod(
                add(0x24e0a9315e2b26c828a11b5d4b3d0461, mulmod(
                add(0xed6e1085930a5db19a00fa3ca37995c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f1e318292e20a049dfc8cd916a74d7e, mulmod(
                add(0x3645ce09f64455ab0f6b93d22aa9e6f, mulmod(
                add(0x685f32c0fa6d28d021abd47f464fa6b, mulmod(
                add(0x79f4633a10516ea909b2c3711f253c8, mulmod(
                add(0x647c2c9c74b01a907dd5f78ba364445, mulmod(
                add(0x17af495acc62c4b312258979ae60587, mulmod(
                add(0x10b343e08cea78a8fb169b7b18eb74ec, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28611238e1b162969498ee3f0b2a28b9, mulmod(
                add(0x26340bb2def88761bd1b00fc132347ec, mulmod(
                add(0x264afcd84d4727bc33807b414cc60a27, mulmod(
                add(0x152e1e168f683bd3bc7223e55b02068b, mulmod(
                add(0x5731dc57a17010daa97fdd1dcc58148, mulmod(
                add(0xb0af65101352699688c93cdf4cb1f4d, mulmod(
                add(0x2061b61909f9c414b916335863dc5dfb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x673d2a04af347e5379582f6f04822bb, mulmod(
                add(0x181bb5b9cd15946ee0e958850aa01e45, mulmod(
                add(0x216635d81949dcf3f512fd5a9d49517e, mulmod(
                add(0x2857326991e58c54a154e8e03dd62065, mulmod(
                add(0x37fec9faf7a27d838411f9620a1e2c7, mulmod(
                add(0xdc67dd454badb1dba3ea12a3f8feb4a, mulmod(
                add(0x1d0dba5332152ccd78712d6f9e6b9190, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e104bc7e6a41a187b03559e47e28b60, mulmod(
                add(0x2797dd075278b3414f1049a26578fe, mulmod(
                add(0x174d8d6a93e8a1c3a3d1d81aca05d8a4, mulmod(
                add(0x2f3b19edad4b0d013560e39615bf67cc, mulmod(
                add(0x2f7fa1e4c0da6888f8037b144e569260, mulmod(
                add(0x2e5712a1007628c894ed50145065dddf, mulmod(
                add(0x4ff47201409f0cbf7aadabd388fa75b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16ab55362a0711769c358cec3b5babab, mulmod(
                add(0x2ac42a6130e89e048673ebd52bf0a272, mulmod(
                add(0x1e15326ed9b417a690d16c22f0813873, mulmod(
                add(0x2c206eda6396d36a0f585b26472ea072, mulmod(
                add(0x4c98d97bc7b5544376afc3648f5edae, mulmod(
                add(0x175b28d573a97dc13e2fe1f85fd9d777, mulmod(
                add(0x2b0d032a60b076ddab243910edeaff52, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x175b5477af6d9a0fe0f5dc250be3a585, mulmod(
                add(0x29d82d590cefddaf382e3e1a2e04151b, mulmod(
                add(0x17944b4a4d19c15e0f6216d3c1b6115f, mulmod(
                add(0x2c1dbb24757d905155f49d7ce4bae3e, mulmod(
                add(0x78c02f0c8558a93300a5d08623f0c69, mulmod(
                add(0x1db87c0c5dbef06649bb160d87469b3e, mulmod(
                add(0x2f0fb47c07174fb6788767c081901b3d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28d5b1dcb33077d6134870a0fe8c992b, mulmod(
                add(0xe14fc4f03581790c7b94be136260626, mulmod(
                add(0xfb4d2f0561631915f1df2017c6a1d9e, mulmod(
                add(0x280da46c845b8cb9a848617c5784d693, mulmod(
                add(0xaa5c79e7e8f875ccba137be2d4e6a06, mulmod(
                add(0x1e97dfbc2cf1d1b61d2154d5b9a3010e, mulmod(
                add(0x2e06fdd866145812808354da71782ce, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1bc2e8c7d6510b3bec0a53185208cc16, mulmod(
                add(0x2dbee863addb302170a3ca09eab696ab, mulmod(
                add(0x2a0ecf9936db4e37f703ef82f77862cc, mulmod(
                add(0x18a1a430e97536decfb3ad0d54e22bf, mulmod(
                add(0x85f024a94e80ace10d2c4d0e2fbd524, mulmod(
                add(0x2087e17c92bf1cf0a1287f8e9503e233, mulmod(
                add(0x24fc6c5a63cbf3206f7b5e704b3e223b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x102ddfef27c24121025029a1f86fff6a, mulmod(
                add(0x4ccc4a1727afa475ae8a606421238d5, mulmod(
                add(0x23c0ad15f1da819f2520c41cc32e87c4, mulmod(
                add(0x4a04c7232f7ff97624d33828bc6be78, mulmod(
                add(0x28ce5f982348852f3ddfb0a900c35cdc, mulmod(
                add(0xeb62703260400ad8cf3ebe4291913e2, mulmod(
                add(0xfe2f684eecf3e9af6705b80d09a7e92, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x17a63dd334413d27dedf5c7749e40c3d, mulmod(
                add(0x2052e2277a8f1a48a760faee1251fd2e, mulmod(
                add(0x25e5a71def672ce3393f3a28678f2641, mulmod(
                add(0x426741298776f8802037c140a7d9ffa, mulmod(
                add(0x232ff585446e4a698dbb76ca9c39d6bb, mulmod(
                add(0x1025fec85f5b6f15dfa414b00a7cf4c5, mulmod(
                add(0x29381b8a010114da2c79df8e87374626, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c4f85e1cc3dd88d0530b8716e7cbcd0, mulmod(
                add(0x2d07ac4791590cf20277c1e9e60e175d, mulmod(
                add(0x1d8031075f32d5cf13f103e90fcbdd67, mulmod(
                add(0x1bb6af0f653b78737b8857e8a808c725, mulmod(
                add(0x5328e99f7c39203309362becacccd87, mulmod(
                add(0x1ff02b9e985ef9f2ba7848d88be16620, mulmod(
                add(0x15873dbfcb93b99a809f0a5b8b4b90ca, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20d1a8ba422ec94f404a044867d3dfb2, mulmod(
                add(0xc23b1decd19dbe880df8c68d184beae, mulmod(
                add(0xc2ddd7161fc2923ef51e0bedb85658f, mulmod(
                add(0xde7e783953bc0c7e83065147fd71fc6, mulmod(
                add(0x149b023251a41a8a4d2b9f2c7f1ce9f2, mulmod(
                add(0x2e49431359abc2e05d615772d3ef524f, mulmod(
                add(0x17fec2fca0a0b4928ba3416b23cb38f0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xeaaed8811befdf51c0216e5a01d735d, mulmod(
                add(0x1e1ded16b81bb32fd75a2a98430a94e, mulmod(
                add(0x3f1d7e4947c1f3748696d91b6f20184, mulmod(
                add(0xad98530ddb34e49f1c33cbf1f841eb7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
