pragma solidity ^0.5.2;

contract MimcConstants8_1 {
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
                add(0xe5097be4220b8adc5925ae985108158, mulmod(
                add(0x22321e5d2c5d95a054d8dbf99aee31b4, mulmod(
                add(0x1cfa3fe1301866edc393ed06b96649c6, mulmod(
                add(0x20332b0985b8fdb041b062111379ee40, mulmod(
                add(0xcaa4c7ab59049b9eb06dca373316c8b, mulmod(
                add(0x1da8eee3970b60d0d8ff9275389b3070, mulmod(
                add(0x2ab2acc36b56eeaecb7be3e74d52f5d8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2903cb6a444ba8e88f71d7c1a53e2356, mulmod(
                add(0x3ae1e06804af6145dcc84863bf4aa56, mulmod(
                add(0x2f1371d73e0e08d6f5a2c2f43cc5b69a, mulmod(
                add(0x1bb8dd74a52c392a33ad00947861e3d1, mulmod(
                add(0xddcecc05170402c5790948a6f65d8e4, mulmod(
                add(0x2cbfd10a64ce8364be9b174d808685bb, mulmod(
                add(0x16d1b928668fee353bb914f3a76a5039, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa44a2da805480efbdee1f93e44e86d8, mulmod(
                add(0x1ad654b8d0c0455a97bbefa06bca788b, mulmod(
                add(0x1219df03d6885f398bbc5c0d197df2b, mulmod(
                add(0x18fe6dc5c8e55c6e16592a9042acd893, mulmod(
                add(0x2dc5ec332eea15559a8d809b25d85800, mulmod(
                add(0x12345c32fe71f385a0a80b837a3ad218, mulmod(
                add(0x2472ca66d560fb559b63c69338262570, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16312908906b0e282f1658ad110be441, mulmod(
                add(0xf1b34d3b31006f5f64246e9e7e5d181, mulmod(
                add(0x8b9ca609491f6434818164aeaac3617, mulmod(
                add(0x2e778d3c74d9be33aa32b51cc066e7d8, mulmod(
                add(0x1eb1fc0e10d19898479122e5fd84c718, mulmod(
                add(0x13c25bb273cf05d11ddf746df562060d, mulmod(
                add(0x2ab723573692c755b032c692c4d7dd94, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x26dde3e1e37464e42f760a56ac4e2b1b, mulmod(
                add(0x3ec655befeb809a5910330a68436e08, mulmod(
                add(0xc34b126d53404a64df88fe9d8b933e8, mulmod(
                add(0x1a00587ac5886b52201af2796a44414d, mulmod(
                add(0x189f89813237d818be0545fe7c3f0ee6, mulmod(
                add(0x10d65d7af0c6c81b97713b2889cc13cc, mulmod(
                add(0x1cead8c67860db99627f57197425ce5f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29a235bfd24edfbc131a104503c793f9, mulmod(
                add(0x1c3905a920768ececb820244c00351f3, mulmod(
                add(0x4bd6dabe360ee6ffcb9b45a5a9add23, mulmod(
                add(0x186e6201dd9ed23c8a85b0d9cf5b50de, mulmod(
                add(0x133a1d3b8959846004f1f3b2f418b1df, mulmod(
                add(0x2bb6d6f3c26245267ae007a5ad2cdcf5, mulmod(
                add(0x12c6683e98b72d7fb9a801a21dec6b63, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2de80bd5a3366ab459194141eedf911d, mulmod(
                add(0x682e6fe111f36c8c2234147ea448fc8, mulmod(
                add(0x166455c0c2728c70af02ce7995fc06a9, mulmod(
                add(0x264a28b917b3d129c60a5c9964e1754b, mulmod(
                add(0xabe64bfd6e1f90f44ba703194a36bd5, mulmod(
                add(0x244ce90f320c0c4f9bd9b69f46131da9, mulmod(
                add(0x124921826be88667139c1610a3542f43, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e7955b382e32743b224391af22ba322, mulmod(
                add(0xd08bccfcca127afbf67d14a43ffb275, mulmod(
                add(0x5ba535839bdc7e6f38df3da33f90a1a, mulmod(
                add(0x2f1e77f4e5bb3bcb21676cc25a86aa0f, mulmod(
                add(0x1c4a867ba2388dcc2bea765331de0496, mulmod(
                add(0x1e045067ed346233cab340d57cd762ed, mulmod(
                add(0x11c1b4d9d69e5eb50cc32e1926f878c3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1c55a1341586df521065ff5efd132ca8, mulmod(
                add(0x2f1f9afb2f1204f5962abf6f903d8636, mulmod(
                add(0x258c262048fcaa981c8acec8f3069da7, mulmod(
                add(0x97f40ec8deee9dce66a4cf0eb80b267, mulmod(
                add(0x4ba25e93ad105f2f7b7dbe0ce46f911, mulmod(
                add(0x94314312d64667c8e1229eb12101f31, mulmod(
                add(0x7193f86adc6cdb5d08cf1e79218c5cc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11b4b80fd3ec5a08ed75738dc24c5ef3, mulmod(
                add(0x11086a78345292c5d639e05443ce5859, mulmod(
                add(0x1e70aa3a2a81654bd504e702bdc1ce5a, mulmod(
                add(0x19dbc3285b2d0ad6f250984b695beca5, mulmod(
                add(0xd977bd4338b4275e2c542f7c4f5128d, mulmod(
                add(0x18aeb0cc70ba5a6f5489614a118d7698, mulmod(
                add(0x2873fe8163ff6051f4097e04237c0b53, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdc7806c2bad81e04d20908f12e2f8ea, mulmod(
                add(0x17a1914f0e2b1074b30563c3be64f138, mulmod(
                add(0x2293307206d2e5527055cfb6d130cfaa, mulmod(
                add(0x21af31f60709434437bba1b3fd3f7674, mulmod(
                add(0xef38bb57e4a665089d1c96dba7a46e7, mulmod(
                add(0xf077e13fb78d7bec2c6f752f8adc63d, mulmod(
                add(0x26213e1a4743f72eb60d09a90430d833, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1de80d02d5c09bfce4453d230798c655, mulmod(
                add(0x7a73099678c115d5a170d01a576a155, mulmod(
                add(0x284a79641118e74826d5f91d1d8261ac, mulmod(
                add(0x2d8b271e1ef81e2f5fbfab5cfde1a5bc, mulmod(
                add(0xf34962790b20b1b21696940364f4b6f, mulmod(
                add(0x2f0490915bac23ac089697c1b44b4ed5, mulmod(
                add(0x1a0b746c3379e5bbd0ec90f6776b741b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x61eb97739240e873b654a78e10e1605, mulmod(
                add(0xe8e2103d619a33e52ccc1a889a3e3ac, mulmod(
                add(0x12cf688baa6b442b3326fe047cde7711, mulmod(
                add(0xb50684db9f0b697f7c37f9c31a0a593, mulmod(
                add(0xa8bce0c69a2394c0d672f9d1bb15ad5, mulmod(
                add(0x94d402ba9d136bf361684379332c800, mulmod(
                add(0x208bb203fcc364c02967c634ecebe43a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e53d04674cd894854aaa141cd7f881, mulmod(
                add(0x15b8df6079e854a76a0e0ad886fae604, mulmod(
                add(0x2b8c1d83edeb47097662f28bb9a22024, mulmod(
                add(0x1115136c715e6262e0d0b868c22f50e0, mulmod(
                add(0x2384b279118fc2c0d271f9fbdc989142, mulmod(
                add(0x2dabc610c3b38a444ce1cb4eedddcb6d, mulmod(
                add(0x255a365744dfe1ef59b32928dac0ff2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1259cde8d8c99dd56d54112d813a9c2b, mulmod(
                add(0x6bd901a9fbf1ed07fb95d3427213430, mulmod(
                add(0xf9daabc6d1559c5e319491d0b1cb95e, mulmod(
                add(0x2d423a7deeb3f59af6ba9b95e27fc025, mulmod(
                add(0xc7e70e6466fdb3096d2d13df291f893, mulmod(
                add(0x268284e46c5f75a113a9c0b188ed0f18, mulmod(
                add(0x21b87a546e4c62a8087f28c3c2035c85, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f84ab83da40c935df0d1114310a7636, mulmod(
                add(0x19cca97143d8280e352a37153847808a, mulmod(
                add(0x219b089166663ed954bd415b3e54ea4a, mulmod(
                add(0xfe318973ae0c1d1c57942a34da6a117, mulmod(
                add(0x153101ddc405b2700277b1d2ed0a6b0e, mulmod(
                add(0x2298ac3f81ae2636eb522e93615414cb, mulmod(
                add(0x51460330e30cf64e521f4363bccb5c5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf36d805317a99bfb51560d8cc79a133, mulmod(
                add(0x2863257b53edfd65ef9244da641b7d10, mulmod(
                add(0x1232de8f5b7e7f9199afa75a086b250f, mulmod(
                add(0x8ac8a4c347f519c01fc5e2564ef8caa, mulmod(
                add(0xe450387a5482e53a1eed0b6a62ebac8, mulmod(
                add(0x2fbf02042fe967a64daab03eca08cde5, mulmod(
                add(0x4382d653bb0e6326ffb145f4698e390, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf6abd437153fb90f603e11e308d5dfe, mulmod(
                add(0x928ac6776b96e0aa4060fd872a180e4, mulmod(
                add(0x282206b67f2b09f6b0b1834e74549b26, mulmod(
                add(0x6d2a9ba5975530dec5451295e2c65ff, mulmod(
                add(0x6e39a618eceaa5c6730b00ad6f42cb4, mulmod(
                add(0x21372266c9abdda7b8f58e2db887ad6f, mulmod(
                add(0xf9e9691d807e723e2fa319772ba5475, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29116b975b3b5865321ae11c42782e54, mulmod(
                add(0x18e9efe4a23558639f1203217e56d9be, mulmod(
                add(0x1b771c9abe36a13d0e1629885954e90, mulmod(
                add(0x10d45d21ddb26725bc4f658502e37ce0, mulmod(
                add(0x693200f367c4fd5b0e9103c6d37a115, mulmod(
                add(0x1c73382c501eb6421dded941d7988b13, mulmod(
                add(0x2cde8a2a41a67d5de5716789effdee83, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x13f109e1b0f5b14ceb9800994bb94461, mulmod(
                add(0x2150a245dd973e778a6e6e1d79d27db1, mulmod(
                add(0x16e1b92f717e275d09c9d8ca3cf0eaa8, mulmod(
                add(0x2f9e0132e6f4ce5cf17f76d0f2b32f18, mulmod(
                add(0x4a86ac20aa3a65af3e1bfbf6ab54998, mulmod(
                add(0x2e5cf7a12ee23efdc8d0125f3d0bb01, mulmod(
                add(0x900696aa3ba7b72284bce06c70275d8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4921049847de3403cb83b8ec7d4c857, mulmod(
                add(0x2c6c8327d30033eba96dbf41d359e225, mulmod(
                add(0x103743a436848edacea5bc102319e35a, mulmod(
                add(0xe62ee652caa99e19131fae11887493c, mulmod(
                add(0xd8cafd6b9d7a3cd9d46d11c7e4d4ad9, mulmod(
                add(0x27a69a8cf685f4eb1a67698615362fde, mulmod(
                add(0x47b6ef19d5cea1f421ea5d44d20855d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ef09f4bd360a465f39afca2e6d35fb0, mulmod(
                add(0x1fcee13d0d23a780f0096f6c1092e46c, mulmod(
                add(0x1cbc7065dbb5683e301c88045cc794ab, mulmod(
                add(0x1274b01d30c7ddf6c392cd7949cc1c89, mulmod(
                add(0x276b8f7b6673db88df16fbda8430092b, mulmod(
                add(0x48b2e357be8cf348ca0b12cc841fb25, mulmod(
                add(0x5254046fc73f8eec9b42f82bf452aa9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb65a172598efae0d42199c548235853, mulmod(
                add(0x125fa1f485941a0f80c842a6b3326884, mulmod(
                add(0x4ff177f754fbe2a2911a409c869dcbb, mulmod(
                add(0x1ca5975492a134f93db8aa2dda58dab3, mulmod(
                add(0x1cfadd9db921c2ab4ee6bd2169232c6a, mulmod(
                add(0xd812524c8f9b78c4f378522a25cb99e, mulmod(
                add(0x1a4fff9ef7222b691eda658c3681ddc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e0ade0dd8be28c1ae9d86de70b6a3e8, mulmod(
                add(0x1348d969c9dbc0215dded0b98c3b61be, mulmod(
                add(0x2d600e497d7fa0e5f8d15c4fe0c94da7, mulmod(
                add(0x1815b091ad68411d872c5cfbca101a01, mulmod(
                add(0x26990da3340dbac0f9da05b7860da122, mulmod(
                add(0x14aecffa15530393aa5ef578306db800, mulmod(
                add(0x9043d1de5d03a2c0450a53ec831e399, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b109054919ed3793a32e50c5d9515d1, mulmod(
                add(0x23eebdf12c839286a53c3e63c3974dff, mulmod(
                add(0xc5731b89f4168e4a1021d6bc395853c, mulmod(
                add(0x27742c3cc431e9400dec8a0e22e9d65, mulmod(
                add(0x14f9b687640913de79c19753431e1f01, mulmod(
                add(0x166e0e6e4cc058ab4c481ebe306593c0, mulmod(
                add(0x260fe27454c01a4678a2a41e09d34d49, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2569328624aac6f92d1e913e9b9e5ead, mulmod(
                add(0x1ff989301e0d9ead038c720a54eb84a0, mulmod(
                add(0x1f579ce58124878e2a742cb6b195a4f7, mulmod(
                add(0x1a01de55bd477fdb4f10dc4ad85ebd0d, mulmod(
                add(0x9a01b6fe6da611ec8a178146bd134b7, mulmod(
                add(0x239e470ee7ec953f894b0b61c11f2448, mulmod(
                add(0xbbd1ecdebc64a8a939316faf270672b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18eaf674aa2b1b8563359cbf44ba4c57, mulmod(
                add(0x2d58b3da197313cf862c0fdf40e0ee98, mulmod(
                add(0x1000a082f3653e421f1efc47aed74d01, mulmod(
                add(0x2e0edd5ef9f3a08b2a46643726f065ba, mulmod(
                add(0x27f03ef165e6e9ea5a164ac2a0223800, mulmod(
                add(0x11aafc13ed552ce3209d19339f9311fa, mulmod(
                add(0x106169f6c9dff89c2e3ad84737e4106c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4d511f64f8fa6eb5983fb3d303986b3, mulmod(
                add(0x145a78765e41ce72118c37aa943b9f53, mulmod(
                add(0x14321575ffb1cb6e23ab0e5141162a42, mulmod(
                add(0x2144ba771c93c295c96388e9afdd37a, mulmod(
                add(0x1261bbe076e9096f408a9698fabc5d17, mulmod(
                add(0x661d82ab6c0c686da4bca82a07fa9f5, mulmod(
                add(0x110683573eaaba80d808473799c66ca, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1fab2fbeada92667ce6983e4316bc622, mulmod(
                add(0x22398d570c1aeabf10419ce1072695b8, mulmod(
                add(0x13c22d4b5cb03f07fc17e8716a8c6921, mulmod(
                add(0x4e9b1ca0b4c15f848c8ff90d0e26dc1, mulmod(
                add(0xd5ec62d5167500971a9c425c8a985e6, mulmod(
                add(0x1e0e4d200f81f42e2c7b0441d49283d2, mulmod(
                add(0xbf0c156af8253e40fcc27fa19f659dc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x433bed91e1e5b8168c55ca5f9fc747e, mulmod(
                add(0x2c2f540057406f96e89f4453c4f23b01, mulmod(
                add(0x2bd8ce952fd9f435d10265508cde98d4, mulmod(
                add(0x229b4e3e88127c817b0658f5990ada22, mulmod(
                add(0x21a26aff8c14e01bfad6f9713594b197, mulmod(
                add(0x993f43720d6712a316722489ee12bab, mulmod(
                add(0x162210c66be4d9fc81b6ffca842c81bb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa022600743899ffbf13d4efea8d2aae, mulmod(
                add(0x37b2cc2c8d044a99ec5de80a7f8d6d4, mulmod(
                add(0x1a561bc2c43ea2ae2d41938a96e099e2, mulmod(
                add(0xea239533dc0bcf8a6ded33c369d204a, mulmod(
                add(0x44448ee5cf45b7da0d7f7fa372600a4, mulmod(
                add(0xd6cf3638abcb20129e4cd0fb6e14470, mulmod(
                add(0x2d572efedfb91b51e19f5390ba50e39, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f1d3833df92331fcc9912052c672a81, mulmod(
                add(0xb655b542389899b4d375bc24157a88b, mulmod(
                add(0x25e39d8e077d3f695bc94bb75cde1281, mulmod(
                add(0x2fe313e2aebda3871560f7c0c0cdcdd5, mulmod(
                add(0x724d593272ca79dd1944c06259dba17, mulmod(
                add(0x288c1cdfd04f2dcd5c61ee4e7ed6050, mulmod(
                add(0x2de6d7f3dd5e768fe8b910b87e2bb260, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27150e1de69dd15a5558b6f730b25add, mulmod(
                add(0x194991a1b0a1094cfa2b072f6fe6c6ab, mulmod(
                add(0x273d8913ee8c08811b434071dfb442ca, mulmod(
                add(0x297606c4e8303464b2963c33310960dc, mulmod(
                add(0x22963884a52c8d4ad341eee0dd5adec3, mulmod(
                add(0x1e9814280604122a4d4cc4731b4532e2, mulmod(
                add(0x290c1bfa98367ba015a52b259167e942, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19f759b446e35239524cccfb99581e07, mulmod(
                add(0x4bb27a08805e08bf076d918f9ccda90, mulmod(
                add(0x18f68e430fd18cfc1dcabc3a3e15ed64, mulmod(
                add(0x12ae2e7a0ac874c868595c79f396884f, mulmod(
                add(0x28f0ef2abcf74016cb609ff1fc009590, mulmod(
                add(0x1594ecda6463f08515223db30ed46089, mulmod(
                add(0x2b2d167b9b6bf3005abf8fff5b0ccac1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f6bd3226633dcf8a6da7c72d9c4fd45, mulmod(
                add(0x3f8043c1b636c615e57d273145c0d43, mulmod(
                add(0x136e0c89dcfe4478edf077bf75c94dfc, mulmod(
                add(0x2951f62b7dbf82ecd9d8d4cea24e66f3, mulmod(
                add(0x2fa1a5ef04f7a974d334e8949845434a, mulmod(
                add(0x28e35e78df0b440c047234624014da81, mulmod(
                add(0x105594afe65031c5ea2d273a970e4d27, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x284f947f4529321b7d847be2e62503c1, mulmod(
                add(0x213d19b7f28f71a20457b8d5f56d07de, mulmod(
                add(0xf5063f71ffa16b437d0041acf6f00a2, mulmod(
                add(0x14ba5991f473394b552d03ef6dc67c6d, mulmod(
                add(0x472c4271ecb41df6829d1bd69f6d268, mulmod(
                add(0x29273ae2cf8ef9866d811bc8551722d7, mulmod(
                add(0x2c03afd182b1982883ef6b107e6a18bb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2052c915be7ab414720575e00b73179a, mulmod(
                add(0x67a3fa67247923198ccabb3d2d9d260, mulmod(
                add(0x14d71436a2d32f35ef95391251041cf2, mulmod(
                add(0x3ce3776addac070cb38033efa5514da, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
