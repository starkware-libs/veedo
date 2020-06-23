pragma solidity ^0.5.2;

contract MimcConstants1_0 {
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
                add(0x214a5f016a42aa4b8bfc8f07303719ff, mulmod(
                add(0x19aaac8ff211973050ae7ce7104b5a72, mulmod(
                add(0x537cdea47d165a1ad5440d4fb415284, mulmod(
                add(0x16cf4fe732752cacce02e0a858fae98d, mulmod(
                add(0x98abbdf4f5b0aea1627bcc848c7edaa, mulmod(
                add(0x25721ac002d9a9d163c227524fd057f1, mulmod(
                add(0x9e050c48b7b356e388bc5452ca64b85, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x668483884bf18b41399e374e0f0dbc0, mulmod(
                add(0x1388b3eb047b33813665b0f0af2bff2e, mulmod(
                add(0x2d8cdb27459c42243f3a2a6a2d093100, mulmod(
                add(0x268cebb0f80423f4fa49a15875ae9076, mulmod(
                add(0x1a674be78a96d41e5cef7c2ae509e21, mulmod(
                add(0x15ccd7b8a2886b68a78873ee5ac16502, mulmod(
                add(0x15b5d6478f8fbfc996ef7478b6c76e53, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3dea359848cd3496ba3b04f915366ac, mulmod(
                add(0x283ad256dceab5714ddbc4beaee12f5e, mulmod(
                add(0x28917d7612599cc0a51f11219be5fa5f, mulmod(
                add(0x2a4a9b5aebe57de5583c5ffe254ff24, mulmod(
                add(0xcf07e627398131e3d85206d2252223b, mulmod(
                add(0x1e86a350d9cc560450e2cadf8f5cdc80, mulmod(
                add(0x23aee667c1a4299a42a14241fe296e7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1c019eb8a43e2033fcd328052897806, mulmod(
                add(0x1aa6a962d69650f50d35824cc1b841de, mulmod(
                add(0x25ece05b462078ae39c8444b6b34c8e2, mulmod(
                add(0xeb6b36384e1f7a74bf224acc1230cb6, mulmod(
                add(0x12371723bde13f06023efbea397f157d, mulmod(
                add(0x209182654e7e4ca372b538fec8377157, mulmod(
                add(0x29f882b6a2ad7c75c12d92ccb2e7cad4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x767d2a36fd3ceb9a9fd9ea6fb0e863d, mulmod(
                add(0x163c4b36df47a02fbcefc87c8de25068, mulmod(
                add(0x3cc06154fbc0bdaa8883644f668ef5a, mulmod(
                add(0x23ed148ed52004d59e78efcd400d2c2f, mulmod(
                add(0x2f6f3bab470f53ddb7c0fd722096ad2b, mulmod(
                add(0x74026502e6f8a6188be5dc9e9a0b974, mulmod(
                add(0x243655200f93daf869933bca2e3bf338, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf8c1489dd6cc8e35c90f7f180a8b93f, mulmod(
                add(0x2960eb3e49d30f5f1b8ab7e592ef56b9, mulmod(
                add(0x1d57faedf7ccb6ded5c55f3f585880be, mulmod(
                add(0xe79bf08a4beb06b09fd208bf4f607ae, mulmod(
                add(0x3f08f3a194574bae926f3cf4aafed01, mulmod(
                add(0x28b3b2ef4f1b9272d1fb94d3af04cfa7, mulmod(
                add(0x1ec16ed516add18073fab152ae93f525, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x165d42fd24e5de84e55c29c2ad946b55, mulmod(
                add(0x2d721f1f8136ab5a6a93807c3959301e, mulmod(
                add(0x2c608d5b770c3fcbdf2cd48c894e1d68, mulmod(
                add(0x24ee6e0e86f2dc4c1cbb59eb2310ed99, mulmod(
                add(0x77af49468e115540d085261e93f22f3, mulmod(
                add(0x22dedfc8d4b037f1eb2c7000f7b96e, mulmod(
                add(0x1aa390b4f5f9f30700639999529c4e6c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20367cdc839c18be9f171d4bb30c6ebe, mulmod(
                add(0x1c5296d8975737558a5b303c7d862709, mulmod(
                add(0x1b188e61ab20dfae09cfde3e485313a9, mulmod(
                add(0x2dd77b8917f86d5b4e7399612fe59419, mulmod(
                add(0x14e17743e4da7809f06488cc475768f8, mulmod(
                add(0x15af6587ead664f24c6798c62c8a48d7, mulmod(
                add(0xd0fbceeee3ad9689300890ad6f58fe3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x67872c127e63cd6052fbb27639b01c7, mulmod(
                add(0x745fedb33630ca5209ef9109e4c346b, mulmod(
                add(0x1c93477f56f6425a872473dd5bd2785b, mulmod(
                add(0x1cf90a734f8088c4647e3bc5caf9bb38, mulmod(
                add(0x1f3d8f9a2dc446badaa1fac28b043e7b, mulmod(
                add(0xe0599867627faf3d782a753436035dd, mulmod(
                add(0x149c465cd6ae46c6d0ae3db647d2d5a2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xffe4f0afbb001e7688b4369b1ad81c6, mulmod(
                add(0x27f83594203df6176822769ef2b868e6, mulmod(
                add(0x1ac7a137202d3e779967c0988ebc447, mulmod(
                add(0x258b1aa4ac62b3525ec9568fc4e7313d, mulmod(
                add(0x25d9418c495ffcdf8c0d5ebab4eda05a, mulmod(
                add(0x2b9adf3579bdffad843a69b76a22d26, mulmod(
                add(0x1e7b5f77677b11600257b389984ff0ec, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdf14c44976ff1ed5333c269983f6ae, mulmod(
                add(0x3e264061fc79ec5be8e628b69d9eb64, mulmod(
                add(0x16fb6aac06270bf3b48dc57a6c6be90a, mulmod(
                add(0x27770a14f4f218d74afa851ebdb073cc, mulmod(
                add(0x21719b2d8e52abe999c01072c449e1a9, mulmod(
                add(0x29bf0bac0c6e499984e1e6644c5adea1, mulmod(
                add(0x214ab76da582b8553cf1ffc438947c9d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e0e057f973ad5b5a60f3147fb733087, mulmod(
                add(0xa0fcd621080f06196fb185d4951f99e, mulmod(
                add(0x1a7c5ee0ae27f2926b130c293bc68455, mulmod(
                add(0x167077803cd4a2ed6b889e5d22694691, mulmod(
                add(0x2adc0440b74fc2fd75971521ac35db19, mulmod(
                add(0xce3e812a05f3a098c899d86782a96e3, mulmod(
                add(0xb951d110e276d9a94a0036c33fb4853, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x26abe3d40069252ca8ec695e01d44152, mulmod(
                add(0x16a1d3c49877242d5599e061df1417df, mulmod(
                add(0x171a417b5302bcd97db069e033b2756, mulmod(
                add(0x23b1081ecf1030b9c736d1a9bfd5d27a, mulmod(
                add(0x242028f086f1936d31e4fc51facc1f65, mulmod(
                add(0xaa1d6c3847e36517afeaa901b5a0fb1, mulmod(
                add(0x2ee3de494dc1b78474c70c5ee3e26700, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2eb7e5a1786f7596a9df67d556abc3f6, mulmod(
                add(0x77d0df7caf511ff20f9b5a08323343a, mulmod(
                add(0xe534c9173778ebb79a2d041d2950412, mulmod(
                add(0xfbdbe65c52f23e153068f6c08a5e22c, mulmod(
                add(0x1159c248627253c2d5856511e3aa9ba8, mulmod(
                add(0x263d2a616e3313c8eac97e7bffe39ebb, mulmod(
                add(0x1febb713361c0705e9a9944e3ba89fe9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4549802bfec3dd93fe97668c898fe52, mulmod(
                add(0x1079a1fc29b858b0077adbcbaec1c74d, mulmod(
                add(0x4fd5ecc33bd5b94eb9b44ad24cd80a5, mulmod(
                add(0x22dbde7e4b977dc48bfeb8b91e64fd7, mulmod(
                add(0x6fbf96a896c9bc4962a3d6c8078e749, mulmod(
                add(0x2425aa9bb1c0c0b1b369d6a0acedf7c2, mulmod(
                add(0x25afc719e22204d6ba2e7ae4adccd4c5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x6abeb346c52f0cd5188dc09f5d3815a, mulmod(
                add(0x10b5256297f54d955e899feaa068b2a, mulmod(
                add(0x27f3ca5ef3fd635ab43c45e1320b3b9d, mulmod(
                add(0x2e5073cfc43c9987e43f9bd20fcfb, mulmod(
                add(0x1a100d50d4840be09af47aa9e541f2b2, mulmod(
                add(0x147a22adfc419db1dae8a35739d51aad, mulmod(
                add(0x20f6518a6b3b65ce356827b4e1fea087, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x271eb7fc2c95e27bc39c9f5bc7023bec, mulmod(
                add(0x6cee81c94dba403f67c71170b4af3, mulmod(
                add(0x2807f343cda02d3e3ed5d97bc7d3a513, mulmod(
                add(0x16a8165e7b72dcd8b4731185e01c09ad, mulmod(
                add(0xa04e859da1ef371ca2b9a63c3e01180, mulmod(
                add(0x8ca7aac490b93339f1226b7741ee3c3, mulmod(
                add(0x102d89ff8867796549f5be8675411cad, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x110ade971b112269d790d83110dd4c49, mulmod(
                add(0x6beb5baad1966c82a72a3014baa843f, mulmod(
                add(0x2c97a65b0de7f76b1894414be4d1c3a3, mulmod(
                add(0x856f48e0731e6a2b3dbd56e20d4ad40, mulmod(
                add(0xe75d2c9105a95160b2d1842ad83f5b8, mulmod(
                add(0x26d4ed89a3c3c9e56ce6ae0c3f6f760e, mulmod(
                add(0x2e5c7122d2b41deb898c89e9be20c481, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x230577731eeffe04e73e5cbff04811b3, mulmod(
                add(0x1e37aa3fa1d47eb458c5b234101acb08, mulmod(
                add(0x1230f67b613f031960a836edf1aab4e2, mulmod(
                add(0x57a2f24f39aca341304dbe60d788a45, mulmod(
                add(0x26dc08a5166f4646a1f603692ed834dd, mulmod(
                add(0x2567f3631a815005bb057a1e4cd717af, mulmod(
                add(0x110eb3cdc7351988d493d4dd5b10695b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x213502da85c1c3c057f4a91ad9b5ced, mulmod(
                add(0x139c9772acf0e85ccd64ba2772c7bfd4, mulmod(
                add(0x14c7843c15bc0e4a631964286b90681a, mulmod(
                add(0x7f4de9d6de59908d92cc5ed19ba4f55, mulmod(
                add(0x2c05c7aa49c5a2dfefa3ac26f9c30ce4, mulmod(
                add(0x21fae6c3f3aa3e5fb69c30033f38712f, mulmod(
                add(0x100ae68aee3e1043c4b7ee007789b532, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x148e8b1baecf8a1562ba8e3cd75f26bb, mulmod(
                add(0x1865aa033d7f42ee5aa621b27000f798, mulmod(
                add(0x265f23fddbda5c30572cbd7152d97983, mulmod(
                add(0x106d43e7e5a53698518d8204fe11ce99, mulmod(
                add(0x1aceb32d2ba08d5d27ebe699f7c1fbad, mulmod(
                add(0x276cbbb0edc92d85defba412272648c, mulmod(
                add(0x18645dff3f26ab52ab79fd0faf969912, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf1fff59743894a60a0dea10d2376b16, mulmod(
                add(0xec81eb3275cbed830ec8a0ad79f546b, mulmod(
                add(0x2f092c58303c54192449e680b5ab3d12, mulmod(
                add(0x18bbbd267d09725fd990ebafcef20095, mulmod(
                add(0x109345c94df4b2daa79e3ec86f921143, mulmod(
                add(0x1fce9179d9f872ce6551ff2ea889602e, mulmod(
                add(0x121107d61fd4ee0b76dc868261e0d729, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa32fe1b2f429ee029617d564ead9b55, mulmod(
                add(0xe109fbe4c9f4ffdcff2fc4229b2e648, mulmod(
                add(0x2ad46a7370578d149e7efac0ac5d9cb4, mulmod(
                add(0xd134f60299d791eb9ca3a6b67f4f971, mulmod(
                add(0x1b78e536858eb4d50eacbafd72c344db, mulmod(
                add(0x123a3bc5e95f0e545b0b5bfd19ba0b8a, mulmod(
                add(0xcbb7e90ac7bfe0a43eede9322729546, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2cded1054f3f6c9f3010ce543969214a, mulmod(
                add(0x2d78b93364e85f5eb21059b3e04865ee, mulmod(
                add(0x18d60d694247c98dac5dbefbd9441dfb, mulmod(
                add(0x41e7bffcda473779a72334d8efd488f, mulmod(
                add(0x12eb1f17276d0841a4096577134870c6, mulmod(
                add(0x1780580a2f9e41c8276edbd7d7836f22, mulmod(
                add(0x1ddf2995b1bcfde13e4fdcf2407cd7a3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x285602aa9ddffcb7823a07248e298e47, mulmod(
                add(0x296c0db7c8d5010f78d9653a56781f66, mulmod(
                add(0x2b1b5a2ccce8ca0abe1bb60011f6238d, mulmod(
                add(0x256dfef22610a37fc20edec69da41736, mulmod(
                add(0x1d2771572096e9deb4acb2c07a2ae706, mulmod(
                add(0x18406ec91dd0397e2bb567074454acad, mulmod(
                add(0x5cf3c38065494b54fbaef9edf72cdb6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x241d8f213ceecd3f18deb0220171a8dd, mulmod(
                add(0x7e865357543951d98ba81e07ba2610e, mulmod(
                add(0x1dda88498187f975b24336ae5f4ac40e, mulmod(
                add(0x28b7b94ac6377ca32d1bfd80e7f04db4, mulmod(
                add(0x1c4d237d188b0d0da70d54177e832c76, mulmod(
                add(0x2af1492e61e33a7abb1d344e1cdc9b6a, mulmod(
                add(0xea7aca88d165f0aa1395742d6745e14, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x25c39b63f3ec38a7222ec6c7a8e267be, mulmod(
                add(0x18d0e4355ce6ea7564be084721e31a0a, mulmod(
                add(0x2050faf9c3d191905e9370f1a479b689, mulmod(
                add(0x1b498dc1a58ddf067259e5a7c20c23c, mulmod(
                add(0x24cf98c3a448164ab9b725d5df06286, mulmod(
                add(0x7d203bc1fdc0adc1f00bfc192b5c7e2, mulmod(
                add(0x1b3fab5b4de582b5e057d197f50dc3a2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd86c50afa8fd56fc7b15adea5973fab, mulmod(
                add(0x651b90d9637d35a4216b22b5850a665, mulmod(
                add(0x16c8caf3a6c60ab8cd8cf8fd8c0c89a2, mulmod(
                add(0x1dca93a6b8592fe091db16d0ecb81a16, mulmod(
                add(0x2e15d1bbddbec2e5f0ed29cd4395adea, mulmod(
                add(0x2438f6b962642416028a16bb3af38ccc, mulmod(
                add(0x2aafdc3fa7adf90bbb4e3592f517bd52, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xeb5ddd151d19108ea6594bb91772156, mulmod(
                add(0x194be72d4cd0f2743c4d5401903cfaa4, mulmod(
                add(0xd7092b0193f5eb460f77ed8df3a57e4, mulmod(
                add(0x1a6c4d003630002f46386e17e1951217, mulmod(
                add(0x167a76c3aab63ae03efb9666e45ac0a9, mulmod(
                add(0x270bb5150c938f662172ee81e7ddbd3e, mulmod(
                add(0x1de075860cf736bbd9b68a859305f1c2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16c30972a8d8f7bcf9bbff2d1ae8fb26, mulmod(
                add(0x1cf5be2024d12557bee4565c22ed0fd4, mulmod(
                add(0x1e8dbc101d41546bd90c4df26d62637f, mulmod(
                add(0x14b545b515ffc707404643fea74ce68b, mulmod(
                add(0x1daa81d63801f1b2979641c62c938fe0, mulmod(
                add(0x959cce4922a6d97dd4091c4b8ebc040, mulmod(
                add(0x1c692abb4a2783272cb7e75099cb9fc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ef8729ff928f6fa43d1a3dd2a5de9d6, mulmod(
                add(0x1ee14a23d1caca57f25eb37b65560bb8, mulmod(
                add(0x84bb0f63a8a79f52bab949637b916de, mulmod(
                add(0x2d48f21f0c8e5e15eb2eeeb7ec923a41, mulmod(
                add(0x26b051741fb873ea7aa459cab9b84d99, mulmod(
                add(0x17f9fb96424299afe09a8dc69668d70d, mulmod(
                add(0x1e165b35fbb2bc986558718a8101aa0b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc9d9cd96010b308e8be398bfb28f233, mulmod(
                add(0x75b9f52f8593f0d70df0146283e64d9, mulmod(
                add(0x233ccd8b4f471b85032739e96aac35c5, mulmod(
                add(0xf884a1f9a63afd313f5a28b4fc39633, mulmod(
                add(0x1d05160a1f6ae44f5ee470a7ed92e0d2, mulmod(
                add(0x2310a7c8f1c1d08201f1d478d1ce28c5, mulmod(
                add(0xcf04352794122c8eb9345f31f48c3c7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x9ee221596d89fa34eaede717393133d, mulmod(
                add(0x6fb9737321e1f8f6ba1000ca0ac3643, mulmod(
                add(0x1dc7775d9a6cc3b702ff55dcfaae9ed7, mulmod(
                add(0x5807c8de4d5cbf8c194392904e7faf8, mulmod(
                add(0x790784cefb7ab6b2ca77ead4d03309f, mulmod(
                add(0x23a78289b5f226f1f162e1d64f398511, mulmod(
                add(0x29dab5a86946c79ff559b237409cbab8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18a51f676961213a671cc1f9c9b45a10, mulmod(
                add(0x29d34a917377e458036d888060ef473d, mulmod(
                add(0x21cea463b39cfadd7eb1e6eef14827cf, mulmod(
                add(0x155c8f3fd72591544c3f8c28e920b3ab, mulmod(
                add(0x2d279fadc79af236d63cbb4c35035d5f, mulmod(
                add(0x1ea88424ffab7b952f631d9eee0c936c, mulmod(
                add(0x221a56a56b9d24872dd4b5c2d6ee9dfa, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d334d8195a9fcd25b36fcd4c6880417, mulmod(
                add(0x1c9aa01b60b067f72033887a875d664e, mulmod(
                add(0x2f8253a14ee7caf164eaf8fc76372abd, mulmod(
                add(0x15c6a084b706dfd372a512eff081b931, mulmod(
                add(0x238071f87ca30b099039c523220eafd9, mulmod(
                add(0x174bd60bb15c189a2e49a0cb00155f6a, mulmod(
                add(0xd44b68dab9fe364319539e2c560a769, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa896f090153e4a4a190656253581307, mulmod(
                add(0x249f94355b18948ad9dd8fd53246d6d0, mulmod(
                add(0x1a589529defce4fc7afadb77cc246461, mulmod(
                add(0x2d0c865cc07672c0b2c04123f307fc9c, mulmod(
                add(0x2c601e596fc8adf77ff600bb057d2f62, mulmod(
                add(0xbe9ff42758cda6ef149e4ee3c25d4e2, mulmod(
                add(0x11e7bda11f2afc29fcb9338ecbf67424, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c2b3bd8ba108fa9d906588b360cfecd, mulmod(
                add(0x25722cd3b28c1e3610f027d48159f5d6, mulmod(
                add(0x1757eda8c138988a9f2f7e8e5012fc8f, mulmod(
                add(0x113b1544a9b0cd1a9717bcfadde9acca, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
