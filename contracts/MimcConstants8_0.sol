pragma solidity ^0.5.2;

contract MimcConstants8_0 {
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
                add(0x497e762a103b66c7b63b914f888817b, mulmod(
                add(0x19de69b686f2b5ffcedaa3fe52ac47ec, mulmod(
                add(0x12155f3cea68efaad0f09abfee135b0a, mulmod(
                add(0x1083f58c6c91e5f63e7d3896e44d3700, mulmod(
                add(0x15fa64f77d6a241482cfc9a0eb89c75c, mulmod(
                add(0x1acf9a1e9894662acc65518d7c7c4d66, mulmod(
                add(0x2012bb6cf0f07751f8745b9f72a33c20, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22f3a865b4d1d726e42ca8895add20b, mulmod(
                add(0x182d5581fbf09260d42ce0ce42362c56, mulmod(
                add(0xe8be41c70ffedf61a566c5f7ce45450, mulmod(
                add(0x4688dfac2e630c8b9538a01933a8fbd, mulmod(
                add(0x161dd67a34d0dadd2189ef6c190ac34a, mulmod(
                add(0xf3ed34545573983deb0de3c3eb52af1, mulmod(
                add(0xf90f8f020feaa79643ad670f0f4b090, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x36cf3a9f7abe29f8bf6ed392ba503ab, mulmod(
                add(0x3c309b2ba991ae8a41b3bde2d67530e, mulmod(
                add(0x17ef34e188d6257b128b1e2afa5d8246, mulmod(
                add(0xcdc1662703b12f6a2d1b4105121e676, mulmod(
                add(0x27adc5840d2ba6b0fa850df150d9d035, mulmod(
                add(0x1add1c6716a9d61aa6995488ac34f14b, mulmod(
                add(0x20b315565fd4797904d24d92e1c6587e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2584aae1d74566e4596fd03eaa1b05f6, mulmod(
                add(0x28d35154ddf3550946ab1e47da3e36ac, mulmod(
                add(0x24d93b332a0b15b48f5cf6f61bfbd75, mulmod(
                add(0x2713ad1c8abe73ece91fb4ee06789c3b, mulmod(
                add(0x1982bb1d7ab1916e5a108e001272e12d, mulmod(
                add(0x11bfd2d9305cd96fd4526ed2acc08a0f, mulmod(
                add(0x22a6e329cee8d1ebf88a80faa7015658, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x81cf87052b15e5795c529e8138ec472, mulmod(
                add(0x2a51011de7e04905904e65bb00e30422, mulmod(
                add(0x1553d906d36c184d6f9556e1d476de9e, mulmod(
                add(0x1b17b7e7c5e55720713fe05eb9f22608, mulmod(
                add(0x2581d2342f1652e1c7a88c79b4e8b487, mulmod(
                add(0x236765188051b80ad9261a1048c10faa, mulmod(
                add(0x299e22284cc731910b5ca9e226fb037e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22dbbea85aceac1f601336abd33f775, mulmod(
                add(0xa7a2621720efe0a978c469501db7b13, mulmod(
                add(0x1a156c9b2eec4539a6da7b8d210b2b93, mulmod(
                add(0x4c096bc7548f557c82857bba2b182b7, mulmod(
                add(0x2c1da3db932631a867ec4f04a0a7069d, mulmod(
                add(0x16a0860d1dcc287d3898b411f9f9ea27, mulmod(
                add(0xf295a09042d1a9059eacbce22939b8c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b8d3d44faa1fcc51c8496653d5e8896, mulmod(
                add(0x299a8ed37e7a2457bc264fb4fc4c81bc, mulmod(
                add(0x16128d327fc4e9f4c4db678f4eef4e0b, mulmod(
                add(0x117643c9a8ff11ef530db698ae786fb2, mulmod(
                add(0x183823d17417e2ff90b33c6d306ecce3, mulmod(
                add(0x9b4e091654ec439d8cd3a7131e416e2, mulmod(
                add(0x247f979ab621fb2707c70d99ef2ead79, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16f356d04465abeb6f44ef3f57a210cd, mulmod(
                add(0x6a328978f23540802c4a8d873fc4693, mulmod(
                add(0x2baf92584e37643123a9d6b31f64b50d, mulmod(
                add(0x2d11a03409a062ef7e8ca245d1ed5c0f, mulmod(
                add(0xf4f9bfca9819e2b1f9a46d0759475d1, mulmod(
                add(0x3b92a20873ad99100646f054144871e, mulmod(
                add(0xef13129e2fd9f291f09db9e0bafa04a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e268697043a510c9f78d53c4bb22016, mulmod(
                add(0x8d24b37bb009281f658d894889a7193, mulmod(
                add(0x88957f0dcf9359d4f5535fd21c5fe91, mulmod(
                add(0xe6c625f47f53d85f8f194ad6e65ae80, mulmod(
                add(0x14c32a1aec5e32d7a6021715f6960228, mulmod(
                add(0xe32a83a350f2ba9d130e26be6f09b26, mulmod(
                add(0x282253599b0baefe6ab9d3bc4a5ab142, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x121d5439356d2bd5184e384807ada64c, mulmod(
                add(0x12bebbba98a93ff888e30bf3c77477da, mulmod(
                add(0x19932e684e084821c6b3fa86b9db4c2b, mulmod(
                add(0x2aa306f9cfa3e4172af3be200f3fedc3, mulmod(
                add(0x24c62fc8ff4e3f62bb7705cb249d5e51, mulmod(
                add(0xdc187ca1adef931bb3170aeecee0f56, mulmod(
                add(0xea9d8cae27cf449099029c2f2e32eae, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x948b675467d4b1e9e6e7fd2798d177d, mulmod(
                add(0x1c20eb085229687319ece6af1974f929, mulmod(
                add(0x85dd8390a0e8b86c5e2cb887b6971a4, mulmod(
                add(0x26bae88d1722ec65c4b1cd91627573c6, mulmod(
                add(0x27f357aa04454143124ccb139f97ce0f, mulmod(
                add(0x1e21cb99eb8ce963f10734c0b9ccde9, mulmod(
                add(0x21cc608c1f1e5064d83b194c0684e3db, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x10657564a03708db121d3389de8a3d39, mulmod(
                add(0xabdfa20ee33f6261ab0f365f25b7eed, mulmod(
                add(0x20f8ec5d12d72cf3fbd838fc09606d42, mulmod(
                add(0x1c20f615d4349e07ff8fc2d789d236d7, mulmod(
                add(0x286c094ddc4e2bc6e46d56b01af78124, mulmod(
                add(0x948c8384d05fcf51f1220613f68f55c, mulmod(
                add(0x115d40ed4804483e0c9a54a94d02eb3b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x21b75c32b8234825ed61415fb7ea05ae, mulmod(
                add(0xb815b5669c83bd9cae19a54e12cea1c, mulmod(
                add(0x36fac1ecdc42bed189e03f1cb0dfdf6, mulmod(
                add(0x1570de5ba54fbf78df0ea31145360879, mulmod(
                add(0x2ec223cbfca520e78133d7d732beac9f, mulmod(
                add(0x19aae988b7a40783ebd131b3faf1aa6b, mulmod(
                add(0x26aca5ae9852daccd309aff79af41ce, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16014e65eedd44465bf308a201e67510, mulmod(
                add(0xb5407c30cc3ec59d9912b86fa1ce6eb, mulmod(
                add(0x13d892ad7dd2db69e22fb66d3054dbf6, mulmod(
                add(0x26a835f3f28cd2df6f86c8216d3da15e, mulmod(
                add(0x14df2f4620341e49f5be618e5d9af194, mulmod(
                add(0x19b56673573d1d607e12df2e29f8c6fc, mulmod(
                add(0x1a05fbf92165673241f60a357b73c5cf, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11cb044e1a605738853a29395c36d016, mulmod(
                add(0xfe79dbfb3df98f737a20b840c170b7c, mulmod(
                add(0x3a0a88cb845ba6539156843b3e248ec, mulmod(
                add(0x25f5ad17c05734f5aa0da9adf80a6e93, mulmod(
                add(0xc506e087ae2bbb310466b317753c8de, mulmod(
                add(0x565e9f3411f9bdaac0a5875e551612a, mulmod(
                add(0x20753a508a3e9661b4fc8e2a86ff642b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x141943a3dfad47343e6bf73b9e5479ae, mulmod(
                add(0x7dcda9168b5b0a7608e527028590843, mulmod(
                add(0x1b53fe285a5e55aee5c088706c4c6576, mulmod(
                add(0x2448883ef3315d3628df7ba2ee8a4a1a, mulmod(
                add(0x144bf139069c86150bc7abb06a312c6a, mulmod(
                add(0x267feb4fd138325f85b154751c8af1e, mulmod(
                add(0x1838d57930c1fa945475a7ccbfa8530b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ee28ce391c2acef50c45c3ea3e63c, mulmod(
                add(0x9270e3161de8f96d43503416c210c35, mulmod(
                add(0x2da0fb0bb62ed534b28f737d0330b79, mulmod(
                add(0xb285e0d058729f109cf8dd1e56c4ea9, mulmod(
                add(0x9b8cc06a5e8ca28858001e0c5d39841, mulmod(
                add(0x1cf5f7e4a9af1b6a070505896df32d3c, mulmod(
                add(0x28852c6a43201477584a5bd891c1b30e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1874c10b6a69d700345e6dbfe52954ae, mulmod(
                add(0xef39a7a358be39dec6da4a51278e86c, mulmod(
                add(0x23c222acc5353983682db1655de698a3, mulmod(
                add(0x140d5ee08c7d9bc927f78ae04e98471a, mulmod(
                add(0x1028b44a477e235165b8768b805d9ebf, mulmod(
                add(0x28d8d7740a0b55865c97ac62e898e4ad, mulmod(
                add(0x23b5e6b84210f0d1f19f6daa26e464c6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x46e46ed3eed717f1d45a45c5b96be4a, mulmod(
                add(0xb281956d1894ca9bb15fca4a75af63b, mulmod(
                add(0x6b16640bdf868f753638e4e66c671be, mulmod(
                add(0x3e33df6580c250ee1844eaac12215b2, mulmod(
                add(0x24331d6d87e2d5573adae34aa6ed38ec, mulmod(
                add(0x20b1c8892b0f3b16fa095c733d025326, mulmod(
                add(0x4be7ca5cdf5a3b4a59da2444e98e07b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2dbc15353f45da967778e3f10cba173a, mulmod(
                add(0x175e82fa6b7802284e5a190ea55a4012, mulmod(
                add(0x11bcc05ec8b1afbb97e7c1c7fe245a9a, mulmod(
                add(0x17303d34c907f3a42a4d4bad59c2d28f, mulmod(
                add(0x1e8137ddaac37d51762567144cb970a3, mulmod(
                add(0x1b974977c30f1a2602382960c2c14a95, mulmod(
                add(0xbb78b77deb30073f0e30243fcc5a765, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f3980f1eb09b269135bbec044baa3f4, mulmod(
                add(0xb82a0273fe4433f769622c83cdbc16e, mulmod(
                add(0x2ee7aca6db2ad35199d9c9ddef8a6889, mulmod(
                add(0x2f0d2d363eb604ec54b772601f2627da, mulmod(
                add(0xf8eb7245a14d313067834b42c58b638, mulmod(
                add(0x5384a2d6bea13ebbfbf231064603e7f, mulmod(
                add(0xcfc3c2b5cafe4825fbd0148edf798c2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1baf45e88504545d2dadfa31748d56ad, mulmod(
                add(0x2dd5fee71a72e21334b474aae7398caa, mulmod(
                add(0x1224b3e94340385f34c3b7f08949e17e, mulmod(
                add(0x12702749cdf05b3684d976f2650b4796, mulmod(
                add(0x235fe894251c6de30294568e56e1917c, mulmod(
                add(0x2d1fd53a9463b8d725a642e7f8e61a15, mulmod(
                add(0x242d91ec6e81ec03261d39dc815fa635, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ad66aa1f2f64343bc60cb692528c539, mulmod(
                add(0x152f654e1a3b286e925d0b59f70fced4, mulmod(
                add(0x2446a64fcf584f3bf6a1516e573bcd8, mulmod(
                add(0xf63db4eb2e273ca03c93920f4233106, mulmod(
                add(0x1a0ebb8806cbdd327078501246e6a7e3, mulmod(
                add(0x27a0adbfed00138ea8723be8f823f1eb, mulmod(
                add(0xa2b0bf019eaadd90728a5f0388e0418, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2d64af5e95fe2dd7c2d26e948d97ef83, mulmod(
                add(0x147a9341e66d38ee65af226ff072795b, mulmod(
                add(0x95b77d3feb0565ae217a62a11a91046, mulmod(
                add(0x24d8b0103288a04437686777b719790c, mulmod(
                add(0x10210dcd68ebcf28574900fb2831bc42, mulmod(
                add(0x532abf7b5639e95d9918f85e41a4e18, mulmod(
                add(0x2913293b13385527d49e4d05ff269c9f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2103a8f735997ffa7b76658a8f31e822, mulmod(
                add(0xa8e1a38efe1448fe3745099352ccb93, mulmod(
                add(0x20e3cd4ff5cb82ec3ef489987a58f826, mulmod(
                add(0x228f373b99e6db846ee9780d2527c903, mulmod(
                add(0x27e2e63bddb216ace469f021a6729bdf, mulmod(
                add(0x112642d32b4afda575b24ad4db577cbe, mulmod(
                add(0xb0255f4515ee07f356703a1bdf0b6be, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x6e0e033246763f699dab92aaad8cd4c, mulmod(
                add(0xbe5f9468d4e67e3e330b6593fd43503, mulmod(
                add(0x32162231a3359ba382124a49df012ca, mulmod(
                add(0xa7a39d2705261cd93fae54557a94c35, mulmod(
                add(0x2e1478eb90b12dc4a91b93534948145a, mulmod(
                add(0x2d91e68ea77901391149186b8e72a5ff, mulmod(
                add(0xe9f8cb7b184a71d65adc4d6ac520193, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11155bc9f70ef31e485d140a387faa40, mulmod(
                add(0xcd087fb7a5f06907741112ec4d731c3, mulmod(
                add(0x2ae5490bfe0f680ce7b4c0dac75cbc52, mulmod(
                add(0x2378312c136955588f59483e0cdebc5d, mulmod(
                add(0x2cc49593be35c40bce8052ebf8bdc605, mulmod(
                add(0x2c8fc790193db8924164809a2fb0d47c, mulmod(
                add(0x2ce66b91ae3caa36c731b18e544d878e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd51288516d9f99862f93d4d9f67ab57, mulmod(
                add(0x293d373735f1a5ba3332aff61b32ce5, mulmod(
                add(0x16f45aca151c9d41d066f9132348617c, mulmod(
                add(0x137608a251443b96cab72daf9a71bd65, mulmod(
                add(0x2741fe394366edfd360b0a5655502485, mulmod(
                add(0x1a592661913f49623067ea29d9f4e979, mulmod(
                add(0x2944f7d191f801d53cb04a3fba1a1582, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x852388947413a7dc25aa3f5660026, mulmod(
                add(0x233bfc741b86154ce6d68f5819a8ca06, mulmod(
                add(0x24381e20afff8393b2630285db6c1cce, mulmod(
                add(0x21dfb6abd95e42ea99edc2f8814d5baa, mulmod(
                add(0x141a5ed254fce0b16c8143046bd37beb, mulmod(
                add(0xa12c0fc6e31d9f9d3a264ef9f79ffea, mulmod(
                add(0x15b5f752c3497e66f9fd2ce45cc9975a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24b4438454dfc3aaaff8a6f3439a38db, mulmod(
                add(0x1e2b52ebfbeb86f5348e3c58fbf673bc, mulmod(
                add(0xfa4ca6f31b787584cfe73f26a2b518f, mulmod(
                add(0x19d075f1c720a58caa154d89bb222e2, mulmod(
                add(0x2a8a0fac694c59c16d5efdb03d5a082d, mulmod(
                add(0x5bd42a7aca12caf37521cb4bfce2713, mulmod(
                add(0x1916341849ba4cdff675c8cf32ea502e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b07cf1c2fd5b466715a7d743baabd3, mulmod(
                add(0x285c25b46d7068962891d0c1e4108a4f, mulmod(
                add(0x1c250f5ebae186a691a101bbeb9da959, mulmod(
                add(0x1faa0dcc3ae17ad5a312dd4f6271a6ae, mulmod(
                add(0x176cecd52cfa4ef142af030740afffb9, mulmod(
                add(0x64ab79b183ed88dfd1493425b072a43, mulmod(
                add(0x1f0c652c3d014285fbae87f10b1080d6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19bef96ec828019a9d4480b293d7e575, mulmod(
                add(0x4f6e7e58667441837cd86186e5223, mulmod(
                add(0x26b8a2a21b47f6576ac0c46fbcd16af3, mulmod(
                add(0x1a015f758b3feda0c7e895b5c0b4808, mulmod(
                add(0xe7220d61dd7bb339753f73c332ce814, mulmod(
                add(0x2b79ee091edda12fecd018bacbfbe001, mulmod(
                add(0x108762415e6eedd0adc282202c0625de, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x77a03055fce5a8668be52d6a63833b3, mulmod(
                add(0x1b2a8c379c7bac77c2cdf57cb062a16f, mulmod(
                add(0xe9f7235a6940ce8248ac99420a31bc0, mulmod(
                add(0x207d8120ad54a558756f72f678236c18, mulmod(
                add(0x314f20c1180ca8091a269f2baaf567f, mulmod(
                add(0x25b34f9d6e91b3c6487c6099ac6fc97e, mulmod(
                add(0x186d4d5091f1a82dfc8c339fb5ae1fc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24c7fe6380337e7a2a14e6b28deb618b, mulmod(
                add(0x545db0f5234cf8f6381b43cc055085, mulmod(
                add(0x99e8833378c09f0e9c3ca7d6166c968, mulmod(
                add(0x137a3187569c380ff6b68ae66953d33f, mulmod(
                add(0x1c5b3cc33ac1c8fecf37475efda2e62e, mulmod(
                add(0xc5757b52b66a345cd873a483d0fdc4b, mulmod(
                add(0x7333aa3dd5342547d00d38663522198, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x261d4a9aefc7d5273e1670540cf6e6f9, mulmod(
                add(0x324bf93c5d1e4773c58ce08f01fb6a8, mulmod(
                add(0x16e18223ff2d32500e00b502aece02e9, mulmod(
                add(0x13af8118f26f632dfd87da6b8e1a4750, mulmod(
                add(0x2cf4c6c2107762b66ed39504fbf82b3e, mulmod(
                add(0x1df38f76a37fa641aafa72d357a247ed, mulmod(
                add(0x2719f6ee94a9b5bb0d10c2ee30f5341e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d34aa163a455049747514cf99ea422, mulmod(
                add(0xa74b8fd2d22dd08ddeb70a0d94fa8fa, mulmod(
                add(0x10907745555fac694d498d5465cf065, mulmod(
                add(0x2c8079cf501057ab03235c238ca3e3eb, mulmod(
                add(0x134d66e15555dde1ca408a7fe7a19a99, mulmod(
                add(0xfadce6d9ea35e6174d56fe3f2be2911, mulmod(
                add(0x2c1a1ede41639c9bf065156484ec7efe, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf7f5b2a5e6007aed341ea43570f7b82, mulmod(
                add(0x2ff51bc85a221161d32771b24d0efcd, mulmod(
                add(0x237c39af6445bc97f17ce22da46dd0a3, mulmod(
                add(0x1e90150e16a03b6ae48bf47b04bde330, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
