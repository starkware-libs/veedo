pragma solidity ^0.5.2;

contract MimcConstants3_0 {
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
                add(0x24529ab272fd98559fcf1f0e79fad596, mulmod(
                add(0x10b3c6f90998e2fd2d78cc107709d564, mulmod(
                add(0x152f8ab5aaa988f6d6996c51bbeb35ce, mulmod(
                add(0xabca66fea4c0afb3eb27dbda1c3cdce, mulmod(
                add(0x9ef84e99aab09b3fb396a79b2045e6f, mulmod(
                add(0x2413021657c957564376eee51655b43e, mulmod(
                add(0x11b4c52c077a013c8273aeb6e733ccc4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27d8d82e3953d47bc5edf681830ae11f, mulmod(
                add(0xc71ddaef41b31f5b889b0b3076d3ff5, mulmod(
                add(0x31605c0cfdba2d81d4a8ecd42ff9a26, mulmod(
                add(0x24d8288e9c48d54911e8b5803f8b3981, mulmod(
                add(0x1db65162dcdec4385221e9683725839c, mulmod(
                add(0x9dc8c9568353737a839f7cdfb84a941, mulmod(
                add(0x219761a8e92bb94d4c7de8d0ecf13668, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xbd87e34b2c05416ff47f723bcd24c7, mulmod(
                add(0x2a3bb3b1afa0b61ab6e7a1c4e03165a0, mulmod(
                add(0xc5fd6bea30fe3645b89bf2eca1af2a5, mulmod(
                add(0x1f6d10e8f3845dc936ee3cb3180ece90, mulmod(
                add(0xf4be060bb594df871b1cdd763f130cb, mulmod(
                add(0x249c3aac5fa2f5c68443cf026a3ac2a5, mulmod(
                add(0x1e054867c2cdd96028a96cd35ae85cc8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x25b28f37995190db2571f0e79ef5d08e, mulmod(
                add(0x235c6a26b0b27a103a511ff0952293e6, mulmod(
                add(0x26826b7aa1c9bb1fcb9639d368e31c32, mulmod(
                add(0x1273dae80106665eaff0fceac0a529f6, mulmod(
                add(0x1c732aed2399455b131b4118563a5edf, mulmod(
                add(0xfeb4315b9e00d0264702d556e8d19db, mulmod(
                add(0x750e7ca905bd3a60c73845ee55946c7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ad414830e9dc3831c4cfab931ea4511, mulmod(
                add(0x29cf225bdc183db4cef144855cdbff7f, mulmod(
                add(0x2d8641d9daf0bca5a37cecb421d50bb6, mulmod(
                add(0x3975bacb93a947033b5b93195522486, mulmod(
                add(0x1e4a11bd410a156006d341cd933a1612, mulmod(
                add(0x2ee8382ddbd4209b6c1764fa60a4f95d, mulmod(
                add(0x146cc02b153291807ad341882a41f39, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x17c0facce07f2926f5614d9d9b159c, mulmod(
                add(0x1b08b63f11126bdb37af8aafe738a626, mulmod(
                add(0x256a655298953d760d7144c0671bd3d5, mulmod(
                add(0xb2bd67df5eebe5846be6685dbcd21f8, mulmod(
                add(0xb66ba0488c33f566c75ca082441e8e5, mulmod(
                add(0xfc24d6c62c5a482c4789c893bd32dfe, mulmod(
                add(0x2c9a1dad11175c8f8c00802b340b4f49, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x17be2f281c1142dc91dbdfb5f11bdcb8, mulmod(
                add(0x14754f048efab931cfd6236f363b86e5, mulmod(
                add(0x251d0fa63850927ac19bd63479ea3c1b, mulmod(
                add(0x18e22480698eb3f60a6b979fc1b4abf5, mulmod(
                add(0x180bde09c556fc3745cf73907510255b, mulmod(
                add(0x6c4e3e69cb1b7ac0ed718ef0a12667, mulmod(
                add(0x205167e23b91b13907260e0995654d07, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22e93a60cfc7fd7f7287f168411ad189, mulmod(
                add(0xbe95a467ae5b41de110d7c1455526c5, mulmod(
                add(0x819393becb7a21ae491cd1c588db49, mulmod(
                add(0x15df8bfe9892d7a968a1098a41fe422d, mulmod(
                add(0x113709698f48c6e6a083602373b4f2a8, mulmod(
                add(0x1531f357a708061efc78c83ede986dae, mulmod(
                add(0x27afde744fee585ecd1ab1338aa593c4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x57cf7dbf5670115124392356d3caf9f, mulmod(
                add(0xc200c13bc909add97f43b8da7ba7185, mulmod(
                add(0x66b770b37b55b74ab775e5da2230beb, mulmod(
                add(0xba96571a8f888d1769afdd202208b48, mulmod(
                add(0x2286f1bbb455ccab47d6b6766ccf0d23, mulmod(
                add(0x6805603c455b2ecebfb37017c84d4ea, mulmod(
                add(0x11f4ee6d9cddcf87baf286dbdcb2a158, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdc0b9b9aca1b087dc2ffdea51762bca, mulmod(
                add(0x1bc11896bce713f6d6103fac2b03e0ae, mulmod(
                add(0x22d3ce9e148b77ca33505871fda56864, mulmod(
                add(0x3f227546f732abe9e3b72673d721fca, mulmod(
                add(0x2e135e95cc2001785645a131e879b882, mulmod(
                add(0x1a3cd6a3bec1648bef0a748e41bf666d, mulmod(
                add(0x1f4cccf8f8020d1b35df4b5fb92e6d4d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1108f905690ac88fb9ccd8945cb008a4, mulmod(
                add(0x1460a9b54c924a71300bc335f7fb0bd2, mulmod(
                add(0x31bb2909ecdead18174030edf21d571, mulmod(
                add(0xbfcc23c0eb40d3f5cf9e0a3ec571f1f, mulmod(
                add(0x1c215224f73894ec0f88c111f906f4ba, mulmod(
                add(0x12a0be357c85223acacb022a0bb9706e, mulmod(
                add(0xce94db79a99c4a943b1584449ca4f88, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b5cd97756cd7bfab98d996f6ad853a5, mulmod(
                add(0x205848ba11e89b6a82e82e9ac8a4d6b6, mulmod(
                add(0x260ab5e6ded100c053ebd75645a46348, mulmod(
                add(0x2c9bfa6c20c66b2af7287e5c28a8fd45, mulmod(
                add(0x22ea24603acc7fc86bb9d50c1e347459, mulmod(
                add(0x97d0aafc4e6b589efdebbe9b7010f3b, mulmod(
                add(0x1e20183f236ac1944440e9a7d582d5a0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x50f871ef3cb7a8fdcbe6b0aecaae7e2, mulmod(
                add(0x4abd31f867c28d01d60a158028cba91, mulmod(
                add(0x779b2867865200bb0a4259bad4289c7, mulmod(
                add(0x1e7526f726065c8d5dcdf03712436963, mulmod(
                add(0x4947476243248f71287d11359883885, mulmod(
                add(0x9f9f9298aca2e80a5c5226559458de5, mulmod(
                add(0x1f3490a50e2d41339ddd91922eabcebe, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1c06f5a01164ba2da50ec775cf3a284d, mulmod(
                add(0x2e5d6cc5a372df30eb5ca8f178e0203c, mulmod(
                add(0xe5fe8e3c900c609e3df8c01b2615d4b, mulmod(
                add(0x3a3c91d1b0a5a09d674d7e09db373d, mulmod(
                add(0x2e7959aa9a42d1cb1f086a539a36ff82, mulmod(
                add(0x1732e8b17f25e7ed780dcddacaf314d1, mulmod(
                add(0x7ba34bb1ff1680ab6aa58c7dc005d23, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x310611d28e2dd29f64de9e148cfd3b9, mulmod(
                add(0x1aa6bde266e4dd67e89b1247cdffbdd7, mulmod(
                add(0x238c8826608c15eadef4d5e9711db7b, mulmod(
                add(0x5f1276ca0e3377158aa20aadd30ad01, mulmod(
                add(0x10ff13aa47c97951986eb12f4f6c6541, mulmod(
                add(0xdcbf0641036f30e7659d084f1a1a7ce, mulmod(
                add(0x2488925bf37efb918a3c15b124587a17, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xbf6b56b2191d613dd1a9d32e362d059, mulmod(
                add(0x2afa36cbc39f5d0859c4a67ac63e20e, mulmod(
                add(0x529598bcc3c2d1f571f1817804e29ea, mulmod(
                add(0xb1e95bf7af138a8f42ebfceff323641, mulmod(
                add(0x218b865fcf57a720911fefe7f1ce88f9, mulmod(
                add(0x3792358acf00a91dd89a1416acbc1dd, mulmod(
                add(0x16fc30eaba825391e00bff894fd79496, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2806411b8718344914df96f95473b4e3, mulmod(
                add(0x2a5c2ee968060cd21c9da2a73e575b3b, mulmod(
                add(0x7c574e611b58f4bf28a23df911f52dd, mulmod(
                add(0x2c86a229e0a6de63f5fc15582aefae15, mulmod(
                add(0x2a7a9c0c6f761badd6f2f995725b29b2, mulmod(
                add(0x2361a9de729f80260aa3ac8cb2371af1, mulmod(
                add(0x1cfe6e1746acf68aa69910cdef4574ec, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdd807e636fb95f58e4fea1ef57d9857, mulmod(
                add(0x7095567c0b94f3450a7a65d7a810a09, mulmod(
                add(0x24a6486faf9f6dfd32bedad8e76ba8b5, mulmod(
                add(0xd6e63adb73445c431fd5cd29107296b, mulmod(
                add(0x6fa8acfe434cf7be1abe78c98ef355f, mulmod(
                add(0x87585789b44bae49d3e0c1b88a8e8b0, mulmod(
                add(0xa54b35aa0068c8b7fd91e7bff01f8a8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7e6457b8ec4bc816190e37f0b693c1f, mulmod(
                add(0x2a4d52854b9972734d50f4b7bcd3a430, mulmod(
                add(0xc4f4bd95e60502630aa9e03dd01cd25, mulmod(
                add(0xeba4c0a2abb87c9ae592fbf73ac7cc4, mulmod(
                add(0xd95f60a64ecc06e4b25c7f903d26a6b, mulmod(
                add(0x2aaf489c8655f66a381f3d2b225efd10, mulmod(
                add(0x6d53d3227cf387f6ba2096d171df29f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd490064363961a564dc108f642caff, mulmod(
                add(0x17dd53f5518c4c3481acc6602f770d05, mulmod(
                add(0x9663e925ed5d8e2c7c690561624a79, mulmod(
                add(0x168c9c5d42bc25022f9f1de0fbc9e3e3, mulmod(
                add(0x2a372ec9b93f3a0cab1835ffd8429510, mulmod(
                add(0x1512d3b5ada6d0c83f876593aaca94ad, mulmod(
                add(0x23e3686b1c6f214f4ebd626047b9eaf9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c3c4209b7d9530647cdccd1b10755f2, mulmod(
                add(0x21866b453bdd2a4bc4f025c479e94ab, mulmod(
                add(0x2066b042322515c30afbf1b0ee8b847e, mulmod(
                add(0x266d8bcd3586a598183c2631a55b6f6c, mulmod(
                add(0xa483982c0be94584c48d5cce198b4b0, mulmod(
                add(0x8a4c38dfc59e92816b02aaa55073ba2, mulmod(
                add(0x1226b6a598bc3be3281b9e2781d3264b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2814330487294a0c57c7153b99526a29, mulmod(
                add(0x12ddf2ffb642e92178758780ff95e810, mulmod(
                add(0xc6d2d57b5f5cc236e92838dccf682d2, mulmod(
                add(0x17feb7147945f730bc205473c84cf003, mulmod(
                add(0x9bb52355f4c1c38c5f245fd10027f5b, mulmod(
                add(0x2ac0775c456a7815f4e97dd0ed04adea, mulmod(
                add(0xde861ee30faaeafb152da79cbcc6132, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x174dd244e0d0e305b64a9d38784c09b3, mulmod(
                add(0x1538cf30fc1846cf6ad10d03af478d0d, mulmod(
                add(0x229a5a457c471040821c4504d6b09481, mulmod(
                add(0x1ad48ab62cea4727f55b111b5b91110b, mulmod(
                add(0xadfdf9c28818b629a35df1491c6c8ea, mulmod(
                add(0x2a42e2cc8980458fe56034f49bf73ccc, mulmod(
                add(0xd222a7c0fd958b6387b7632ac870560, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x10aabc82ce232e779143c4c69ffcead6, mulmod(
                add(0x290240649915e34db2317bd27e0c4262, mulmod(
                add(0x4ab2ae850a9f4bce26b1d8694f278d1, mulmod(
                add(0x5c5b1f69fbac0841bdef58b16ca22f9, mulmod(
                add(0x220265a17bcdf5dba44badb1a7872b1a, mulmod(
                add(0x1bda808bb234f23017a55026f7932d14, mulmod(
                add(0x1f83de84467ec0ad61a0f7ca8281a3a8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2cf52561aabe949768c3f101828be61c, mulmod(
                add(0xa3a7c36b7d6dabd7adbc5888b1e8099, mulmod(
                add(0x2c8272f6518aae24270c29aa07b539ed, mulmod(
                add(0x22ed097f445843865c832595e01c18c7, mulmod(
                add(0x22322552ff34e9e68b4d276e5527b959, mulmod(
                add(0x213eed9d9dad62fb2eb299eb99f02ba4, mulmod(
                add(0x14d7a8e92f1b8e2e5ebd8823dcdde104, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x954711b717f5328b6dbb94c163d7c3b, mulmod(
                add(0x155dccd7bb1abf0167b1f9ceb842f5b9, mulmod(
                add(0x19fdf735d7218e02a8cbfd27d994c9b2, mulmod(
                add(0x88f9efd2a81639fc72f962c6fcdb56e, mulmod(
                add(0x27ebf6cf20db8c9a91715ca156f8a67c, mulmod(
                add(0x24b0b2c42d667a03e3d4240bef036050, mulmod(
                add(0x1d4c5cf315a66122320f3220e9223831, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29fa381f5dd547069f1e921a8e7c5e98, mulmod(
                add(0x12eab2bd36e3333a6bb721be0f71ec7e, mulmod(
                add(0x2ebb977f7240ac90c710b784d1e9934, mulmod(
                add(0x1f8fa8386582921fe26d89bc98772f7b, mulmod(
                add(0x2331b09b36b34487ca99ce4e64a51940, mulmod(
                add(0x9554063c98855a8103f883c5052469, mulmod(
                add(0xbf9b05615e80445d7b4d75bc885ced2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x228ae60d7a8463180596f4000f4d2443, mulmod(
                add(0x262fce6d6d604070339e5c86beb18a87, mulmod(
                add(0xbdb93bb4d726216d95a00c5e13ea3ca, mulmod(
                add(0x164615ed12162f89fc8d765be74f12bb, mulmod(
                add(0x17da87a76bb1c4eb5dd6c4826d2f5ce6, mulmod(
                add(0x5278957222c8ed831ad905d06066763, mulmod(
                add(0x2a0b11d866d9da8de0f12994e38f6c3b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xcb96c0ea40eae8228e615d213d7955e, mulmod(
                add(0xaa08e37e8e08586ff9ca56587a2a354, mulmod(
                add(0x4b117bce8ee2873529f8c44ee7b1c03, mulmod(
                add(0x1ed6a9fee154bda6830db52e9c6cd9f3, mulmod(
                add(0x1c70151012ebca8df874008920f221f1, mulmod(
                add(0x4582fd43ad4a7939cfc9d9afbba17f5, mulmod(
                add(0x181210ce37822a9f2310e11839da05da, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18fcc2828ddc3316cfdbac929097bcbd, mulmod(
                add(0x11ffe9054c5de29e0e967ad0dc646a2d, mulmod(
                add(0x1fccd4b861fc3a5d605bf081eedf7d8a, mulmod(
                add(0x2aa2988c2632ae8b4ed7a30a8c64441, mulmod(
                add(0x1380c460d0b200aefcf0d98c1178043, mulmod(
                add(0x908aa2848d70ed05fc1c781348b0ee3, mulmod(
                add(0x302fb9e4403d04c38a1662ec3e157a2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x251249f8f37361711bfb30662fda0118, mulmod(
                add(0x241e1a069ce788891d724ce8e9eab941, mulmod(
                add(0x18576ee858370c8c8047fc4cd40a162d, mulmod(
                add(0x26390888f3e043f07daaef06ce61b61, mulmod(
                add(0x20bdf22d5411b7acc21cafd4a3cede16, mulmod(
                add(0x1ebfb76e76c3d731de74dad1a7a528d, mulmod(
                add(0x1e2cd45055e37c8ab96f61fd1e5b0db5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc267de149bdd4490c6819941aa703c7, mulmod(
                add(0x236522780442357d0027279e802227f4, mulmod(
                add(0x1dbf3de963c5efa7f25f555fa121fa56, mulmod(
                add(0xc81ca28bc9f4458ed64f91bf859c0d, mulmod(
                add(0x1ef4404a71cfdae7564cdc7784c20988, mulmod(
                add(0x1f32d83938e25e2fa1067001132318a2, mulmod(
                add(0x416f135e101162b1de17412062ab12b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd485266c8002d1ceeedef9cd6efe525, mulmod(
                add(0x2384aae3d3ba5252e693cba45e7d652f, mulmod(
                add(0x2dbeabde71a68e1af04ecbd700e43640, mulmod(
                add(0x234abee4cef01b6aa1b0c8c4ced8a72b, mulmod(
                add(0x1a5a14a878c21326d574ab2354d4f194, mulmod(
                add(0x1f28c04e565e457fc70cf91b78e89bbe, mulmod(
                add(0x385f6ce301f1df6aa2394e566a29930, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x531ad8363d20a092066d54bf9ae312f, mulmod(
                add(0x1b5dee6e52e3bd8c919e8e0b48dc1f67, mulmod(
                add(0x17dde64cc0912e5065f43f7e91428d50, mulmod(
                add(0x5cb438a0d19464023b911c0950d7e8b, mulmod(
                add(0x215d36095c618f0d4a785762663c099e, mulmod(
                add(0x1a7dd5f570d6a52ea5aa440e1ca314ef, mulmod(
                add(0x2c8e38403f1700152e3e3dc5c62f694, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xfef003c1b67913a16be83272c81099f, mulmod(
                add(0x2e7d779d03e654dc6e3faaaa74ae1dd5, mulmod(
                add(0x2c40ad32573e76b6f34e3637f5ee1088, mulmod(
                add(0x2c57b0b157817f3b616895bf6a7c2b7f, mulmod(
                add(0x26c264a0cf71968a5b04d78de009524b, mulmod(
                add(0x145c439d81268a3becf9cc68fc3e1848, mulmod(
                add(0xf5f2e2767c50a91a0e01487f4475ea6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d1797358c63e9facd9501372724ed4a, mulmod(
                add(0x2058c4e3ad089dc2f154b753d69ed380, mulmod(
                add(0xf3de2d0a2b70724256a0241b7ab5735, mulmod(
                add(0xd3239efa8600bbc29080008cdd4d4e1, mulmod(
                add(0x205e7584b175405ed483af600b02d6c3, mulmod(
                add(0xa3844fc97377ba7f5d33bc9b177a952, mulmod(
                add(0x2f0cd385e834ffd01f0a0d5d89d46a33, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1149adb2791434682cdfe6eeb04432e0, mulmod(
                add(0x1ef839eb3889eae62d4dbc66e58e8f33, mulmod(
                add(0x2fcf655f9f11557cfd5ff7450cada664, mulmod(
                add(0x270f905aeed3c485168a9ac60fd8ee45, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
