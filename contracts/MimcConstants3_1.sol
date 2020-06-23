pragma solidity ^0.5.2;

contract MimcConstants3_1 {
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
                add(0x68019d531d741adcaa6b9e2c3c9b94a, mulmod(
                add(0x8ffd7846d27942282127c8718660743, mulmod(
                add(0x2462b9656004e3d0099f2529afd17bb3, mulmod(
                add(0x125d423b0df17ee1bf7a3fac308b8d98, mulmod(
                add(0x2e575a0041d3c21c99a125e2410bb872, mulmod(
                add(0x4cfb745f8741a3b5f256452eae89fde, mulmod(
                add(0x2003aa1f617961da1bbeeffcc857b9fd, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29ae3b4bf785e8813605a15282274788, mulmod(
                add(0x20f1f65b022fe994c863d550c032c6f, mulmod(
                add(0x2a562466223f9217202e967f7470bb9d, mulmod(
                add(0x536a88e94ef83d90cac00ea4083b0d4, mulmod(
                add(0x2b7c57d4525a31c0bee81dff171eb545, mulmod(
                add(0x234bdf01730e8f20e83f1c39b1dc721c, mulmod(
                add(0x26eb25f8f9cda71918e2ba5299b24602, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1126bd8228d74959cd1cec1e0a0cbe53, mulmod(
                add(0x2a88e4f9182f9d151dfc0d7d4614052f, mulmod(
                add(0x145662831ea68afa78a24f69e5b584f5, mulmod(
                add(0x2cabfd73b247eb5818185cbfafbb445f, mulmod(
                add(0x1ed495feef8f151920c4f722c5517a95, mulmod(
                add(0x5684c80a11b7194311aadac4114eaf3, mulmod(
                add(0x824ece187b71c748569b293aadae18f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x180ab2172f45b2e600bed3f2263b9a68, mulmod(
                add(0x170a22ff1d592901898b4b0d0f758315, mulmod(
                add(0x5af3b64748afcbec6234642c33fb272, mulmod(
                add(0x27f85fc555bb9904a1022bd3f8424e25, mulmod(
                add(0xe31523538f4f31001218f9612dd3de9, mulmod(
                add(0x81dacc886cf8d6001b2d703b94a177, mulmod(
                add(0x2750c28a6ec23d71051afea675197d05, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdd7152e8e30c120a88c5ce025368991, mulmod(
                add(0xcc95737b94f0b8ec0b1c27de5b5f95, mulmod(
                add(0x49967a840dcadb303749eb7f18359cc, mulmod(
                add(0x2cb519f8ad4459730e5da1fd6b8c8f59, mulmod(
                add(0x798aaec0dda2f7ca8745e7aa729c22d, mulmod(
                add(0x2d1c8cc6553b64fcbaacf35792b0b683, mulmod(
                add(0x1c6ad74cddeb53885b8cfaa3f305bcf7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2928426b4d8c3c7f0b7af22c12259bb5, mulmod(
                add(0x2a0e884a06772ca5090241a7073d6f29, mulmod(
                add(0x631b075dc2a32f40223acf63e85c406, mulmod(
                add(0x1d94659bf13ad52fc4e76098039f0d9b, mulmod(
                add(0x1e16d194a7002c13c97162d952133522, mulmod(
                add(0x98866a7cd53c70037a79cd64799f08f, mulmod(
                add(0x1aa0bbd64017b4a01d7fb9a2095f9ba9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ee13b44f029ce7d660d2656543d67d6, mulmod(
                add(0x1e4d4ea62b2ba29a8a9d892e05cda0a8, mulmod(
                add(0x6bdf2a3d0810aba46e9bbbb1590538f, mulmod(
                add(0x1ed7f9b2deaf77b6c78dc6d9d1c8a72c, mulmod(
                add(0x6fa6c1325f3fd1de3f4a58f0cf0b180, mulmod(
                add(0x152261c6d0267a5699314f6572e378f4, mulmod(
                add(0x11d836e2d60ca85002b76804f043bbaa, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28e3c5538745f89ec00102cafb7a667f, mulmod(
                add(0x2a057f1b5be360f34e78fbb4ed2ed3ea, mulmod(
                add(0xe36a06262cb2c610f7fcaea58535fd1, mulmod(
                add(0x1333069635938bc54bcff2833b9e373b, mulmod(
                add(0x1229913d25e731ad974c8b26721936f7, mulmod(
                add(0x7e650fb68c66a0daf3c3d1044fdab15, mulmod(
                add(0x13ae69b2e096d57ab34ea7e55a4ad8de, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a1233a52db7947441a6cc502d6962e3, mulmod(
                add(0x14263da971a155fe5e647e4ef9b88878, mulmod(
                add(0x24afa46daf79979ad1c9ec51ca244266, mulmod(
                add(0x66f80340bb41eba23457499a07f9fe7, mulmod(
                add(0xbf1f8ec593542555eb4b045ff9b4f68, mulmod(
                add(0x1a5d034dd2ea2dc301d9b4dec9a3fec7, mulmod(
                add(0xe59ab97da9d5c53edf72a69e0baf475, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11bd581b3077d3aefeb9762903124736, mulmod(
                add(0x27668457aba200d7885b5518000aa9c2, mulmod(
                add(0xdec70ff210c1734669e515a24fa7ec7, mulmod(
                add(0x18d3492028fa0a1a400e682c0ebbf4fb, mulmod(
                add(0x1a904f8c5c964499e2e2fbb46c37577d, mulmod(
                add(0x16194245421c1ee530f73b091fa62afa, mulmod(
                add(0x163aa64e2cbc74953d5d3dd6b2324d4d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1bb695015a93c4203b277ee94954d584, mulmod(
                add(0x2dfc64793897696bf97c560a17f4e942, mulmod(
                add(0xbed1c2d9c90b63e9dfb7ce25dce06f4, mulmod(
                add(0x57bb66a8eecb036ed13c2cde6809847, mulmod(
                add(0x1f4d40910bbec325691102279ad3f27e, mulmod(
                add(0x2af50b49db78a69802dfd6e6d0499287, mulmod(
                add(0x1f0c003fe142d3c2091b5be3ad9061be, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x594fe705ea95223678b4659bfbee22c, mulmod(
                add(0x240af3b4c7c1b7f2dd1f9603a1fb34aa, mulmod(
                add(0x15372fba2899f904dd474deeec4dd649, mulmod(
                add(0x12c971172a01263e801fc735bc3b86ba, mulmod(
                add(0x1be7a43d08a83c7e35ed68a818362109, mulmod(
                add(0x26abbd97a3919c2b1325026048b1b5a9, mulmod(
                add(0x177fe9e3f4a38479e6be5e05df219363, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x62b86c3ee944186999137b1168d22bd, mulmod(
                add(0x369faaa168895a2399517f24d7c8f3f, mulmod(
                add(0x24f59fc931946ad2a6caba54da7d3313, mulmod(
                add(0x1892d3b870aa1458dbe3b87b1ee50cad, mulmod(
                add(0x5a9fd297c83d28c611ffd904692d50d, mulmod(
                add(0x14401c541ba52d727fc73f2f8663eb07, mulmod(
                add(0x49b0e9d75e9c5e6d0c5b8f64c95902, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x213b1fadecdb7369330221268add78d6, mulmod(
                add(0xc03561eb0e4a0264abdd63dd674b936, mulmod(
                add(0x1695d544eb8a9b2ae1bd6821839a9bb7, mulmod(
                add(0x1fae208a52fec4b1abacfaf51903d9d5, mulmod(
                add(0x210b3269b346e82113a4fbd6faf8d105, mulmod(
                add(0x3a9fb08e910316d226fdd47298352f4, mulmod(
                add(0x296a136aaef3addf67bf7c4ae1762396, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b428a1f8b22688a5c552f8cba508c15, mulmod(
                add(0xc5b33cee0ae940a90878af93dbcda8f, mulmod(
                add(0xc97b91be3235213b0b059429a40de5f, mulmod(
                add(0x16fe275a106b7fe76b4e172aa302727d, mulmod(
                add(0x190a2d2911505cca029fbff41066969b, mulmod(
                add(0x1bcc9c19745175b96a3e1562fe3af5df, mulmod(
                add(0x2e8168c641be37c540280f0dd99818f9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f220de00d9c3cb447bd9a93da7481c6, mulmod(
                add(0x1bc4481e439a90deb92218db29c312f5, mulmod(
                add(0x748ca39596cb84d4c0c461eb019e5e1, mulmod(
                add(0x1be92a8f3065598fdd793c91c726e376, mulmod(
                add(0x18593705771ccc5c1c2cfd8f4f238544, mulmod(
                add(0x1fe34913ee2f7f2b78c1ba809f0f1d5b, mulmod(
                add(0x2c7c379fb31b83e27eb73ce34371712d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b83d961f43357f43ad9b82d2d8f3b78, mulmod(
                add(0x12b25af4ddf1da4419f786937d7b58ff, mulmod(
                add(0x68e2da568ca0db67b6ce8e41a499a6f, mulmod(
                add(0x2944f3f25a9e89ffd08990ffe9f6eeaf, mulmod(
                add(0x2ce276c09202823edc599253c315c186, mulmod(
                add(0xad561459bad7bb770ea407a51f90dd, mulmod(
                add(0x16a70074e2e16fc9c91e1560e7100021, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x195501b6b08986650a3b70c659d35ca4, mulmod(
                add(0x18acb99af387bbb3da0bb9feae482949, mulmod(
                add(0x236c7693b41e9b0519be4661df2988e6, mulmod(
                add(0x1232bc86b11a6d321deb1dd5893f4524, mulmod(
                add(0x2789fc73fab2b7d439365f7115ad79aa, mulmod(
                add(0xe8d8a34e91064c09e640ad67ec3e334, mulmod(
                add(0x4dfbc4a2f2b099a4d0117a264340483, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2fd1074f5ccd39db9d2bc462ac565c8c, mulmod(
                add(0x13124b4d60c0b04ca399ea0626d9465f, mulmod(
                add(0xb5ed8a27cb1c4037c86eef121351254, mulmod(
                add(0x18c74139e76cefa69dfaf9a6dc896687, mulmod(
                add(0xc62313306093e40dcc87108b512c00d, mulmod(
                add(0x2a22b09348192c04658164c36ee9c8, mulmod(
                add(0x1ac7ada3a295c746fd17c684c7db90ba, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x110a8bc66336918b5829a17d15c14607, mulmod(
                add(0xcb413fa2333d1abb144eac9020e47d7, mulmod(
                add(0x1b5da06885a9b8a7d735ba9b5807d527, mulmod(
                add(0x4edc73fa9b1da3ca0e34e64ded61a0b, mulmod(
                add(0x1fe70aaf8bdf3bca9620d5b6556ae599, mulmod(
                add(0x14c72f02113216e95fa7f439045e7c9a, mulmod(
                add(0x26b1bbf4b0bacc4bf6a70333ace28dac, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f3e5e8bd14b4363240a083ce60aff69, mulmod(
                add(0x236f985ce9df73b398ce0d589631b32d, mulmod(
                add(0x2342888c5d536329af75bea4ad12b80e, mulmod(
                add(0x11c2110697df721eff3a1fc41826cf9f, mulmod(
                add(0xa89e9183ca536050451289f9814c01c, mulmod(
                add(0x2954eb5ac43a21d3f3b7f8c650ee83c5, mulmod(
                add(0xf94a46d61a69325b58034d4ec197e24, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x273f98f3e19afff9168c883febcc0fa6, mulmod(
                add(0x10e1158deedf2389f2d5fea2d0f83c54, mulmod(
                add(0x13a6b97e04288d0921c001824ab129a5, mulmod(
                add(0x296a15d1c50ea5ba3b7c94bc66372c3b, mulmod(
                add(0x264d6a798ea328af5b31dc88a2e817ed, mulmod(
                add(0x2807d6f38edcc0a97163abe71267df23, mulmod(
                add(0x2c3a50ed479bcb72ff68dcae4bc44399, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xce245092094c99f2c1102570f0a60c9, mulmod(
                add(0x2e6bd32b54c7adbfe76dbe06c460dbb6, mulmod(
                add(0x2b1b8e549198a158bd3e50ace17896de, mulmod(
                add(0x51a7b56b7df02d4613cc8dba32f1583, mulmod(
                add(0x12e08e80f41766a1cb6922aa1d74ee69, mulmod(
                add(0x27b71434b72d6cd7c104592982b86e15, mulmod(
                add(0x1ca486ce552c7aa395fecff0820104bc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x17ba635de9e6b36057404c3e1c388a40, mulmod(
                add(0x57b6e8d891f4252a9a6686ad83db893, mulmod(
                add(0x20cbc9f65bb1802812d33da2fc1f2b79, mulmod(
                add(0x2bf1e68206c82911b45abfbdccea13eb, mulmod(
                add(0x4d7ebf8cd0c3a42ffb3bcec9879747f, mulmod(
                add(0x2a55dbda14efa2dc79cc09416fb236ec, mulmod(
                add(0xa95953d071af227fab892f6ec6b5d74, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ab7320bcb49dc3bd17140236964e5bd, mulmod(
                add(0x4f297e49957e26ccdf8b54fedd41515, mulmod(
                add(0xde69c955dd701878f0919049447495, mulmod(
                add(0xddf1ea99a418c760e67e4ff69d1881e, mulmod(
                add(0x10d60d7bfda8ebdf4fcde9014c09daac, mulmod(
                add(0x1e201fd4b4be308b277598f538c36278, mulmod(
                add(0x2daa56876df3be03e8a4aee1c5429a02, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2334ecd019536579dc5e2d15816b9986, mulmod(
                add(0x219a31c9ac8dc294709130dec18d8ee1, mulmod(
                add(0xf181cdf9b43578b1c16d64132b1f742, mulmod(
                add(0x1c7eec04d5e5f4101d9bb2a628faf779, mulmod(
                add(0x19e9f81d24b04d8500b6dfb5b67c2bb, mulmod(
                add(0x28d8e2d940e591fc66365037b20605e3, mulmod(
                add(0x18662a28bef23ee757273817496aee73, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc1c67bf998f3bdf3cd84c2eef26506d, mulmod(
                add(0x671ca453869bef7cf6a270fcb8c925e, mulmod(
                add(0x24b7f63b422b68436909dd6a58a498c8, mulmod(
                add(0xbb413af222f86a9fdaf3a9148fcb6dc, mulmod(
                add(0x129f3936471539590ac98eb31f0b964b, mulmod(
                add(0x1c87f75c580158eb5794f330aeebd600, mulmod(
                add(0x2e73e4824461a8e33a9c68c87d85662f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdf8ac32189b5e57e0ce2816314beac6, mulmod(
                add(0x1c10bd1769beb926048441a7b0be7d56, mulmod(
                add(0x146f52648034c46b0db6d82014cce1f9, mulmod(
                add(0x156461c79ac4ef56dc92dd403975747, mulmod(
                add(0x206c8c5c82b54c04812f087746a47297, mulmod(
                add(0x27d9b1e2ab97e709fdbdfa39fd5a00ba, mulmod(
                add(0x1904ccacfb7403acd87b0ecc6bb750ae, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2d6d069d90c31d10bb5beb089656d6aa, mulmod(
                add(0x881e97e709981af5f6506b1468a3b9c, mulmod(
                add(0x10c6d9b4d83f18404c1487158c038ff7, mulmod(
                add(0x7577be7a05258aa5ba476630eb7d7b0, mulmod(
                add(0x2dd75ede8c2bac678ea5575e65d8b704, mulmod(
                add(0xae8e6c2ba324c5d2262874245ae9a83, mulmod(
                add(0x2435a10aaa2641b8b0aa60c74a853756, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5a6bc63331aedae4a4ae8ddc773813, mulmod(
                add(0x25012509a176038206f90fb16be46082, mulmod(
                add(0x2dbbc3583611f53a14c16b9f36577d66, mulmod(
                add(0x1a0af0e69a7e6b804a9856d1c4fd39f2, mulmod(
                add(0x1986e29104143407c5eaee27c3769549, mulmod(
                add(0x209753a6a341b7ee8187238c9bcc13ac, mulmod(
                add(0x81513e12c129de057a09b42627da07f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x25f1e372b24a854c0c46032f7f5ce701, mulmod(
                add(0x1491022ea86fa8bbaa961eaff2465d, mulmod(
                add(0x2d686b402e3417f61ce62827f1d69d6f, mulmod(
                add(0x23e4495fb22f6171f87d157dd1e5ef18, mulmod(
                add(0x18d64e72bb5ea2d3515ef8dc07ea40fb, mulmod(
                add(0x180ac3cf50cbcafe2e16ca8f69f17947, mulmod(
                add(0x2da46b75c91ad4208fad04e53e4414ac, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2858a0ba5b5285162b4f07fede287712, mulmod(
                add(0xb43f0467c74946ed2ba57e23bf2c957, mulmod(
                add(0x18f1634920ac5427a0230c78a149f148, mulmod(
                add(0x2eb151c86c2f673d82dbe5c04d9c5e8d, mulmod(
                add(0x277129c3204bb63e902e1ccfea3dcdc2, mulmod(
                add(0x2eded1976c1ba0eb0bfb9002fec8632f, mulmod(
                add(0x1a0b284a0af7b11fa8a34c922d978e3a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x217275eea7a4e1057455dcd7c29225ff, mulmod(
                add(0x185fcea5a52a3c1a628200dd720d74c7, mulmod(
                add(0x28b5e5dc96ac0eb3dc542f74a862bf9c, mulmod(
                add(0x2684ed51ce1c11155f6a419f78db6aff, mulmod(
                add(0x181d7f4c7838eeba419801f5f45e1340, mulmod(
                add(0x26f8b369bafdbe599a5450039dd3b921, mulmod(
                add(0xa313c23591aba2d67ba158ac454b6c9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x118ec0ea2e8ef73c47ea76da37acab7d, mulmod(
                add(0x614b6aad93c90bc113d3569d3283976, mulmod(
                add(0x12e4411ffcb7c71ab040d6915abd2934, mulmod(
                add(0xbdb7c6c7dda72871b214b3a5341a00b, mulmod(
                add(0x61c8dab5a1551d1423f2026084855f2, mulmod(
                add(0x2cbd028ae7586f3cb61ce0edd8d5059f, mulmod(
                add(0x17b41ee34a0d6e69ce4865b4fead4e01, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x14211629b6c99af986f4b477a68c44bb, mulmod(
                add(0x1039c6c9d9d85f4cdc318f0ddd343b59, mulmod(
                add(0x2149dff7d9ff103be5968059a8cba58f, mulmod(
                add(0x2652d9f301c3c13313f3b74ffec0249, mulmod(
                add(0x170f13ca96dbcdb91375d9580817beb0, mulmod(
                add(0xd2ff7df07dd68302ee28498ef31c3e, mulmod(
                add(0x18dfeab1756be2ab19ced28f429bf2b2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2121c918608bdf37208239d049d7246b, mulmod(
                add(0x13ad6e158c5a863a2c283846d7863342, mulmod(
                add(0x8fc83dd5b1ca392fe8bc0ebf5ca57f8, mulmod(
                add(0x1c9c50186792182dd8dfae54f2a92546, mulmod(
                add(0x27568e2eb0d92c8e0a42d88577447d32, mulmod(
                add(0x2454186c351bf01a7b4c14a497994264, mulmod(
                add(0x14eb4aecda62efd93beac61328123e47, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x9b9d82fb832e01f093d7c253de71c18, mulmod(
                add(0x2c7f54d7381cf9c902eb6c875bde8b15, mulmod(
                add(0xc6f15d4581e14adfb0828c387e8f32a, mulmod(
                add(0x51053e8c12d47a8bd4ef0925aa64929, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
