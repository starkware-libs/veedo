pragma solidity ^0.5.2;

contract MimcConstants5_1 {
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
                add(0x183373be0608118c0c39ee62ed65ccc1, mulmod(
                add(0x2b5d61bed35c2d17e6d272790d754a74, mulmod(
                add(0x1770ae1049a392a3f360716e2ce87f29, mulmod(
                add(0x1e1832893731350643085698c3f091f2, mulmod(
                add(0x93e5298ad65b472e85fcc77077accaf, mulmod(
                add(0x21e58349532e93edfef564a9ca596dbf, mulmod(
                add(0x179bffc9050b74d9d376c0a99ee1f584, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20c78c7dd6d518e66bd3a01b2d57c1ab, mulmod(
                add(0x2d797b09b8385f75cd847d83b19feaf3, mulmod(
                add(0x1aa6e288970dbf4fc978deb8a2a37e18, mulmod(
                add(0x13f8c1a90ca4ccebbce90b209161a020, mulmod(
                add(0x16762532afa55ed445fd06eee6e71fec, mulmod(
                add(0xe66054ba0365d594729e3577610c, mulmod(
                add(0x1889b2a7fcc87868130a416414ac8eff, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27d9bb511ccbf8c668ab8abd3257ba1, mulmod(
                add(0x2c24b8c74d13808af78ab3b65b91ab4f, mulmod(
                add(0x2f02ffeccb7000fed255652380436102, mulmod(
                add(0x453220e49a3544ba3eddddf8a4b27f9, mulmod(
                add(0x19c910a48c8a2f2aab71c959895d8ecc, mulmod(
                add(0x230ddc12a9337138f5bafa842f8c54aa, mulmod(
                add(0x102bf669949f03ff2b1784907d6e7ca3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4ca8a7c7112d2016ec23ec76fda9ade, mulmod(
                add(0xa47b375338e8232c3e01ead47cefbad, mulmod(
                add(0x6277bea6512958c5fab5c91140c49d, mulmod(
                add(0x83070c616e86e7cdbc43632eb728320, mulmod(
                add(0x2754c6878ab61ffe3903227c28b07505, mulmod(
                add(0x1a67f86088df4bd8352f15153a2f7b72, mulmod(
                add(0x6468343422fb467a08cdf123fb3c788, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2023e3a3afdd5a282e3983948950bd81, mulmod(
                add(0xa2bb81374e8087e0eed0dbb848090d2, mulmod(
                add(0xc99411ad9d43f051d55c5fd7b128e69, mulmod(
                add(0xc20fc509936f4aff5c810c31d4f5959, mulmod(
                add(0x1727879cda989955fc22c541cb58a73d, mulmod(
                add(0x91b63f50c6a4aab8022cd071769ebf3, mulmod(
                add(0xeb38c4752df1bf9c2cb657a24cb6365, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f026f6b5a20b0f92d5322a36f5ed238, mulmod(
                add(0x179ee67e2892cc0754345c29eb6cba2b, mulmod(
                add(0x1ced21df2d23a73f77e347063ec96b41, mulmod(
                add(0xb147975606e4b08ca15f2b5a32f7989, mulmod(
                add(0x1fcfdcb5eaacd46d0cc14e285ec6a4e3, mulmod(
                add(0x1e4922897487f372d41c48bac98a0498, mulmod(
                add(0x143cf813fdceefb862f4b3891c79f471, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a3ae7d64efd20476111fb6f7d63763a, mulmod(
                add(0x2e42218630fc22d53d3bba0cbebf1ff8, mulmod(
                add(0xf86114e2b7f4529ca1dcaf9aee9a22d, mulmod(
                add(0x1ba23a925e7d40135fe2eb07fa29c158, mulmod(
                add(0x14f65ba5df15c7406e6805fa62fd06b9, mulmod(
                add(0x25c6f023c2f371c6b933e77bc128f67f, mulmod(
                add(0x2359a77edd52808e17e0c73e97931242, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1966f558dc6f06e834b492bc6ab3753d, mulmod(
                add(0x60059d556401e9acce4ba179330a4aa, mulmod(
                add(0x1368c28bf1ab4dde32437a7aa79b0047, mulmod(
                add(0x16844ed570d3bfc424b37379b95c2e94, mulmod(
                add(0x2891203c9927a5f03da0aaf8034fd231, mulmod(
                add(0x24672c597c2c60070377b6ced5a031d7, mulmod(
                add(0xd2992a49bb80d4fcae04a50f65e3e85, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b4cd4d5a1e784152e3aa7139b7db79e, mulmod(
                add(0x225183a83dd9de1c3cf1ec96fadc94cc, mulmod(
                add(0x12e8e36ca7189f3aee4c51d24aa472da, mulmod(
                add(0x1735eb5125c64b2aba8fb002a21327e8, mulmod(
                add(0xb74f3ad8d724d404b12af8b1e74a430, mulmod(
                add(0x28b7017abb1fcab82b251d5ac93ac9d8, mulmod(
                add(0x245c9baa9a6b22635bb0b8e1aa542125, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3fd0c052a497141ad5bb3c157dc98a0, mulmod(
                add(0x2c18770a3a6432d243a37cb1a9f5f5fd, mulmod(
                add(0x40e7d173af77244bcd600ce68106c3d, mulmod(
                add(0x12f14ba4801a3ecbd33fcaada548ac71, mulmod(
                add(0x1ce3cf2cf1c4969480fadf53139ef383, mulmod(
                add(0x1edf5e96fbc2a73309947a5706f3a1cd, mulmod(
                add(0x3c884bde35ca7ad5e55a1e86a3e1cde, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22e53fb88c1be94f44380cbd29a3ee6d, mulmod(
                add(0x5fba009d62df2f90697f3dc020ddbe6, mulmod(
                add(0x25966169743c9142292994a55bbe909a, mulmod(
                add(0x17b687d7afe0ac6bd332c4a1953232cb, mulmod(
                add(0x71cfb1f3311d0c0c4fde78ddd03aa91, mulmod(
                add(0x10153c9a525cedd74af3063e495f1d66, mulmod(
                add(0x47b4531744338d127965407a61bf780, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a66d483e45e7af5e3fcb6750e817062, mulmod(
                add(0x1f4e02ea7b41fa8dbba5dd46ff006416, mulmod(
                add(0x24402ab5ad746aee2346c32f8a315961, mulmod(
                add(0x6cefb3ec5f4765b3b8128c5cf353132, mulmod(
                add(0xe3473c11f0cde12798fbfc01588bf58, mulmod(
                add(0x27bc185205f9021a9699c590e2b6219, mulmod(
                add(0x1845da53a88839b82ebffde616cd78f6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2cee3d6175df764b798a31b63dbc630c, mulmod(
                add(0x44802c52da5d0e1f79ae7a4118f31f8, mulmod(
                add(0x68fae711a1cf742944885a45522c4bd, mulmod(
                add(0x887921ea6f57a40b7778f766f417bdf, mulmod(
                add(0x1f819199c4b797424d5e61a2a7445f6d, mulmod(
                add(0x25137d0c34736218b41b96b758b7e404, mulmod(
                add(0x19d01d85e26c9cf454a56c4c9af90bd9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x139d424bed3d266a4e0ce8f5e83e8089, mulmod(
                add(0x2772d796470ec28bfc73fe73eb48e364, mulmod(
                add(0x2343c7d4a31ab4efce98d8d6ba874733, mulmod(
                add(0x236cdd8185cefdfcc8131f53bab8fbe2, mulmod(
                add(0x24f08a6f154c6d03ed72fdc4376e8c6b, mulmod(
                add(0xd128f13c4d2f08002393035684bba61, mulmod(
                add(0x110bf53a37d08e9cb6848a04e8bc7341, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2973c3ed5e11bf0138bf47c8fd51bce4, mulmod(
                add(0x1b8a0ef4dd05f9ad3b7f10473ad8d6fc, mulmod(
                add(0x20aadeebdca8d0901b0afb87bb3eadfc, mulmod(
                add(0x2f15ff98c31bc7dca5519c106947529, mulmod(
                add(0x2426e8bbd08fd4bab65a754920f0f51d, mulmod(
                add(0x40e90f9f7de3b44948a9284cee958de, mulmod(
                add(0x2c085a8caa93938eaba232bc1084b781, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd08de5036621e4dbb3af997819c50aa, mulmod(
                add(0x28d2565f679c666de88490cb958392a6, mulmod(
                add(0x2bbdd3fe7f239930cb96bf2483783bb, mulmod(
                add(0x163b97a2b668c8c7268513d441595ef2, mulmod(
                add(0x11b7cb691b58dff2ceda2f94263706bf, mulmod(
                add(0x29e6b381ebe6f9e5f6a5d915cd93568b, mulmod(
                add(0x536404ebbc88803ed3fc1d07589c5aa, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27125394a99eb8747e9899f469c4cb62, mulmod(
                add(0xbf04ecaa26157e972af7e9321372b99, mulmod(
                add(0x22e4d472083938f0bf4c9e0853ebb14d, mulmod(
                add(0x161c65bd2f8edc9c15ffbdb9565cd66, mulmod(
                add(0x21b1455943f77bb6b0f485dc1fb596bb, mulmod(
                add(0x1a2f801c2e3df5b2c9b9160646395b90, mulmod(
                add(0x1684dc360d2eea0f94fb45658091877b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x248ca3d114ae62e9b1f9a515b9c63df0, mulmod(
                add(0xa6b86b2771261299fdd61a1876b1689, mulmod(
                add(0x9fd8b0a3128a3d335137ac736a8be75, mulmod(
                add(0x5ca4e6aec90d2e59ba02a500eeaff2c, mulmod(
                add(0x8cc0d7c2a062e8527f2cf8ca583b010, mulmod(
                add(0x2e3312814020599c9bac5de338d1cff5, mulmod(
                add(0xc8640f88e06e1ba69d89353df30c5a4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1190855b2dab74442473c2187ff16db4, mulmod(
                add(0x2c31ec26cf1a7a604a37703130f461cd, mulmod(
                add(0x12505194f6e28d5c12e5ce669aab2c58, mulmod(
                add(0xf29db0c34ca67c95be5c24908b0a51c, mulmod(
                add(0x2d6519de0023c5570b2375d564f40b1e, mulmod(
                add(0x1882b8473bebadeffef13742b739b86c, mulmod(
                add(0x19d8d2dc24ca97d5ab046e475aa1f30e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x25ab00c69f613124b124b9d02d2d1cfb, mulmod(
                add(0x1558a9b0cf791249a9a5242f447ed435, mulmod(
                add(0x15c79cb9e629de8dc92b901b300a7c2, mulmod(
                add(0xc4d7ad83c17f37e588800f16b265db5, mulmod(
                add(0xc455c69564971bb37fe3d30fcd4ad97, mulmod(
                add(0x2f6a9341686d3836e55ca6706be81928, mulmod(
                add(0x2d68dc076e7280c411da8960ae2f9cdb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2906a1d8a657eb90b7a49d2fe68feed6, mulmod(
                add(0x1a0b6f900a811ab2a45a35d2a9dec89b, mulmod(
                add(0x29af687c6b473baa62a51a86f0a0ee30, mulmod(
                add(0x24bababde6c20e5c97983edd0ba8ad96, mulmod(
                add(0x120b9af01bcc0e5e6b32cde466cb336c, mulmod(
                add(0x2927ac0c380bc60f1bc4f0a06c66c8b4, mulmod(
                add(0x1de532cca91e8d97cb964949a8224620, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd5b6ec078f3d0adf36768a80dc40e44, mulmod(
                add(0xc9498e804067362295802c0218ec854, mulmod(
                add(0x21a302eab05ac86d009273193281fae1, mulmod(
                add(0x13a3bc0a0c50e695a1d50d02a8bb3592, mulmod(
                add(0x5882f73a05776bd0d84d70ff727bb78, mulmod(
                add(0x29a78308ad0281ec4d1a43ef3cba5726, mulmod(
                add(0x2bfe80a08cd9bf075a12b2075fddea8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2677af05f12df43405d833baeded6da7, mulmod(
                add(0x27e1e84001f8ec287b7756d5cae41754, mulmod(
                add(0x2a3260866b97860909b78b173669d526, mulmod(
                add(0x2e18b02ac67dc30461dbe461ce408456, mulmod(
                add(0x151edc26901087ee1e478c10f004bdb0, mulmod(
                add(0xde0bf761933b17b33e20ea97ed53f24, mulmod(
                add(0x21e69fe8093b46136d0620262a5aaacc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28ee0398febb752be55dd25335ce9c13, mulmod(
                add(0x25a7d61d9a84b5b9bf39f6a68ac309a5, mulmod(
                add(0x37aeb87393f435031289690fa6e62dd, mulmod(
                add(0x23d24b8f25794c2c7c025674426aeade, mulmod(
                add(0x277d0d7d0c08f08fc5df4e945acff394, mulmod(
                add(0x2a83c97eec5431810527d259f6f30a0f, mulmod(
                add(0x11ad55c177e763c609c453903f1d54d4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x163e3789fc400d2b446ff4ac73f3136a, mulmod(
                add(0x20b2048822a68cf77bfd97c72333360e, mulmod(
                add(0x2ff2a710808145195da732f031d4d7d0, mulmod(
                add(0x2fe53f9f1ad35d889f70c9dd46ed94ff, mulmod(
                add(0x2a0377824db0614f5da739b40135cb27, mulmod(
                add(0x2d40079aaa0404b024ab38e29a76f5d3, mulmod(
                add(0x1c64a34908fa31dbac5e77e383c461a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xe9283f5c31af51895b2adb416ff9d3e, mulmod(
                add(0xf76e3cf3b7c4d0b9c121e9a2430381f, mulmod(
                add(0x9ef8d6d98baebee8361ebe21e19c322, mulmod(
                add(0x682eb60189ea3b8636865afc51d7f10, mulmod(
                add(0x16979c78273e10df21c45841aa0a8223, mulmod(
                add(0x299b5459306889434222fe0e7a07c1de, mulmod(
                add(0x4b9151004120ed0e73d8e488e0326b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xe53b50892da86f988b1ca8c61f90421, mulmod(
                add(0x15ab93a0ef4c6f19fbca9200fee6c0af, mulmod(
                add(0x1c1d368220b86907000c21015b30e206, mulmod(
                add(0x15d5cb960c2fd0b868167641c8b73b10, mulmod(
                add(0x175ac1942f35679225d33283ee0c7d34, mulmod(
                add(0x1d29e28212fd67843dd3e05b0fece51d, mulmod(
                add(0x23e727e047c6c2a64c8f2d53ff3307c7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x245a97bfe7b65f873141c91b5e556eac, mulmod(
                add(0x2b70921123f6fc1b8e058ac180cb8141, mulmod(
                add(0x1dcf997d6cce47eb6a4ea1400cd50ee7, mulmod(
                add(0x187fab7838093fa6c7111b0f048c138, mulmod(
                add(0x2e0dce54bb390d072580bb6b5b8611a6, mulmod(
                add(0x2c3f52cbfc16b6d853954789b5fa1cf8, mulmod(
                add(0xbf7a138d91b09313e48a8eb7c121533, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e2b3b957e04b098e2a470a339aa7004, mulmod(
                add(0x2a9a26140a2afdea659273d105b2f6eb, mulmod(
                add(0x2e85be4aa08fc393658916223487db0a, mulmod(
                add(0x8788404fd3c2a1e4bd2c59e15d1489b, mulmod(
                add(0x191e8b7cc0b9c783bce76b624a8b2fe0, mulmod(
                add(0x57992e5fc39ea7508c7de4e9f2a8a53, mulmod(
                add(0x110f8b691db372d406a849c8f6b5c8e0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f0832aa79843542792f4d377d83ff05, mulmod(
                add(0xd74297dd6b20fcdd52be434fa252f5b, mulmod(
                add(0x2eb8c6e17e2bb33b8589c46062c85d77, mulmod(
                add(0x8a5b17f28d288385827324ba700a434, mulmod(
                add(0x2276e84b38dd9fcadfd080864e6824e8, mulmod(
                add(0x27658bf481e6276130a249b3285c87e4, mulmod(
                add(0x13aa3961e9e01829633b92083617a792, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ded6f7bfde6d0165761056fac19c368, mulmod(
                add(0x1220dee85c98ef023912953a98746097, mulmod(
                add(0x18809d1ac99e88f45c95cf6b9f373bd0, mulmod(
                add(0x229b1c9eada2c3659d3f2493109447, mulmod(
                add(0x1083675b35b314e43cb330dfe2208db, mulmod(
                add(0x2a514e96da18a2de159889cc13162a9b, mulmod(
                add(0x11742d25ade32690bd30a20259e9e3a5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x26a6c4876ec0f8ebd7268d5fcc1079eb, mulmod(
                add(0x2ce429a738796b1bb707a82670ba0296, mulmod(
                add(0x6436a06c36d4a1336b6a3a93a8b34b8, mulmod(
                add(0x1e12703979cfb50c1a566c87baeac19b, mulmod(
                add(0x570a2bb9cd300a673790eff5d873987, mulmod(
                add(0x1d8a6811b57fc6b3e4e50ac5d2471014, mulmod(
                add(0x146ed0e169ade44be02118abe99e8d55, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e8c2c676a9657c380ebbf8be8c1b42f, mulmod(
                add(0x25da70296b55c0736203d70f719cd9af, mulmod(
                add(0x13a8100e9de33e6f65dc8266bf565a3e, mulmod(
                add(0x483ea050a162405e5494e58c5305aeb, mulmod(
                add(0x3b3200c4e24c4904f8bc12d446b19b1, mulmod(
                add(0x544d5cfeeb16c6e12a44682ee8f0ba7, mulmod(
                add(0x105590414e0dedd85f22ba8545106a3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1052e881f75699be99462cb560877968, mulmod(
                add(0x9680fa6bb8dd247f1c1b061dfa16043, mulmod(
                add(0x11815dddc4ef0af5a94c630480ecd8fb, mulmod(
                add(0x1ef451195990e30e6c93d0346ca9f180, mulmod(
                add(0x5239ee0e9c649a3aff806cf4f30a236, mulmod(
                add(0x198d3b2c5675952ee3e56a3301914501, mulmod(
                add(0x24db71bd8849d7b50784461561804eac, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16d7abeed7527157c54608ab9689e24, mulmod(
                add(0x101ce6f6fc366f56f6aefd31a0a94598, mulmod(
                add(0x2d521f90e4517572b96d2e4029b0feb2, mulmod(
                add(0x2fa342fdfda33467d4ffc664e1c47cc6, mulmod(
                add(0x1f8f40c062bcfa1778ba18fd28d9bd55, mulmod(
                add(0x285da71475544cc111d44955d2aa2a1b, mulmod(
                add(0x184a25b28406b01d899eb4a2ac649b08, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xec8f97075a53fe46118119526598773, mulmod(
                add(0x253d70bfcc9bddfdbc836983b70bfe54, mulmod(
                add(0x25ed9272965de3d99cc25b6fcefb9dea, mulmod(
                add(0xf073776fb199724b2fb8da1f671984b, mulmod(
                add(0x53813cb1beb769abbf4e8de42805d9d, mulmod(
                add(0xd18ad3650baddd11fa2ffec27ecdf15, mulmod(
                add(0x119ae59f3cf011a7b066c1c36e8f35df, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x530a93ef2c13eaf9c433bdbc38eb369, mulmod(
                add(0x15d3e06c2ce74e70a694e3f71c3d5d9a, mulmod(
                add(0x20b118291253b82a86f00bd0b89f809e, mulmod(
                add(0x1a1a759af748c9209507d7ec2e6df315, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
