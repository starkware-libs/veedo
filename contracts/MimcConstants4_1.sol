pragma solidity ^0.5.2;

contract MimcConstants4_1 {
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
                add(0x183fd79040c7096fb723c5e3cb859f41, mulmod(
                add(0x1ac01f8903c27aef96313193b698d191, mulmod(
                add(0xcf9e811fc654c0dcf6a928fae9ffa26, mulmod(
                add(0x1a3f636201aa7e82f357bcc6debd51a0, mulmod(
                add(0x2385946274800a9c9a6ba6e24710c6d8, mulmod(
                add(0x1b8cce3e93ddd7c2975d2d6fc4125099, mulmod(
                add(0x289f7c5e017d3da94d2cca1f9b559f1f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2101ada5149d8da59844a2d95abfb8c9, mulmod(
                add(0x24ab19105f1a40deec5c8e05dc3e2e89, mulmod(
                add(0x17d4a344fa61b387f1d071e627718503, mulmod(
                add(0xdfefe1cd33a8bf9acdf5941addffdbf, mulmod(
                add(0x263cf8b81ec3fa0faef6e9711aa333a8, mulmod(
                add(0x1e70f51108265e4f6b67bab595cf24d3, mulmod(
                add(0x26de131a8b21dfd6f137d2a5d78c9165, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28ff9a68ce12c0f62bd3c2cee6aa9fed, mulmod(
                add(0x2961276f643e5fac1718b5222b8c8fac, mulmod(
                add(0xb628909cb08bd202724759fbedb5fa5, mulmod(
                add(0xbcdfd4d3cbe14540ef18497d09e3f4c, mulmod(
                add(0x196ad89d1cdde4eff3bdfe9dd75c1874, mulmod(
                add(0x2d4eab7d73b56da9d5cd72cb4c74e68a, mulmod(
                add(0x18fa22d075005d0d1315b420f8da0d66, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5bcca67e79409b90f76d04fd203045f, mulmod(
                add(0x1c8491dc737991d67d3f5898fb6d8033, mulmod(
                add(0x277f4856837614133ab8c7450d25aa53, mulmod(
                add(0xc40f576977644e76e393d03d5c45c67, mulmod(
                add(0x23853856db9f410f0f4dddcef27ef968, mulmod(
                add(0x15129de97457b102a8d46ceb1711d0ff, mulmod(
                add(0x21ed1e14789b4aeef8612f0fe31f7a4a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x837daead2cae966c04aa94e6d0c106a, mulmod(
                add(0x289a369550714c028869d294439a539b, mulmod(
                add(0x23e7c6801828035f2bcd2f9e5f39e515, mulmod(
                add(0x5217cf71bb221b9da46e71bae97f8ca, mulmod(
                add(0x1902c89df06a12e943cff98563bad7ce, mulmod(
                add(0x245f9e5ccc4be8a9413606851ee0d76f, mulmod(
                add(0x24eac82735ef2cb5430fccca88067690, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1311d0554a962b8dde60bd596f71dde7, mulmod(
                add(0x18373d4cd75a4353ad43e9aa954705c6, mulmod(
                add(0x195063de2edfc0625eceeb9aefb5e76a, mulmod(
                add(0x13009b16ebf29945f709badc597016cc, mulmod(
                add(0xc31a713fb74ff0a7d4dc947b2845528, mulmod(
                add(0xc5a118efc0fbd1cd9eb5880bc1d0ca9, mulmod(
                add(0x2b68102288580f2b74547f749572caa7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x686e5744b91c29ad7142ad7b8cf5c0, mulmod(
                add(0x19baaa432fb5537f68955350ee45330b, mulmod(
                add(0x2a9938ba3ea6e236c8820d8961c3c28c, mulmod(
                add(0x2e8ac117fc58ffed8380eae652ca9e6c, mulmod(
                add(0x76d8a004a7256b55ca5291749d4f177, mulmod(
                add(0xaf7d908768eb6e0f31386cae0bd1096, mulmod(
                add(0x1bd91291d487c83f8b3cccc2a6d16ca9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19ec10a65dee40c12c756d3a7b988574, mulmod(
                add(0x1de9fa70c24f0d88bdd85ab42fd3c4fa, mulmod(
                add(0x26e1587fcc64e4b956a34da1c91fe6c4, mulmod(
                add(0x2c76002e709e3806d1270429f89a4b98, mulmod(
                add(0x607e37cf68bff74ef97c4a9cd89eef0, mulmod(
                add(0xfa17ca78e999d166ecec87353ed8428, mulmod(
                add(0x579395b286803188d241cfd3017a893, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x128764023fc531af0c6d726552ee308c, mulmod(
                add(0x1bff8db04b6599f86a2979341b0c456a, mulmod(
                add(0x11a1564dd9c6e1f55835897fdf2bd220, mulmod(
                add(0x252d833b5a825ef7d48e325cb7689056, mulmod(
                add(0x2254737c7a0fcfa30801e320e2b82b5e, mulmod(
                add(0x19c2b1e0a9b51721f416da7d54965bf, mulmod(
                add(0x1ef39aa2afdc9c5dec189669f0c5bf38, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24a89ad74fac4e67c2c45281eaf946fd, mulmod(
                add(0xec575b394fd18434c96cc50d3bd8a7, mulmod(
                add(0xdf605e127a9243c86b308c2bb94c0e8, mulmod(
                add(0x2e70fdb3f99db35032362e99b0deef13, mulmod(
                add(0x15c89592779187cf5f1d97d595ebe350, mulmod(
                add(0x11760ac70e8e4c320df57158918edfc0, mulmod(
                add(0x2f80459bc327f505636114c4cd3f46ec, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x236f6b5ca3468e4bf14f39d87e6a466, mulmod(
                add(0x193ad5f9f0b11c4165537464ff347401, mulmod(
                add(0x1bfb120f5c9b7fbedd5a36a60887b394, mulmod(
                add(0x2eef6d932f0890a72caf8aeb34e3d4f3, mulmod(
                add(0x18f1dd6e471f484838ad485ae2b57b71, mulmod(
                add(0x1919391babd737297229931cb4d3f46f, mulmod(
                add(0x1d1550b7650f589fc7be887bbeb90819, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1152be3cb58e97ba5c61cf23e376cfca, mulmod(
                add(0x23bc720f36b27b2b3a2db7b798077450, mulmod(
                add(0x146d6f00738c3c494649461c1d0fcf, mulmod(
                add(0x133e8da75fbf37dcbe5cde2b24da0be, mulmod(
                add(0xdac7bc0b0f8c91a2a94b3582a882acd, mulmod(
                add(0x795d1329ca596d548736963d130fc46, mulmod(
                add(0x20775a3cab45a59c1fc897f804ca6af3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x271bd264b5ff1ab2f0e655f88d6b8f4, mulmod(
                add(0x3ffa587e6e20f2224706c0693330fff, mulmod(
                add(0x19746895f6dcb249280f340f4394120f, mulmod(
                add(0xe4565305548369a0d0511a32cb58864, mulmod(
                add(0x208ee93498b3ea5724537198f39e86b5, mulmod(
                add(0x22684b83fb3777a12a1e0467b67ee69b, mulmod(
                add(0x2447fd52b75d73c42e44a46e96148435, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2d2663b7ceebb0035ba2b978c94bd0ba, mulmod(
                add(0x1d5c04e0fd4dccba4cca931f63178f5c, mulmod(
                add(0x28c4edac24a8aa2cb2826d726dc0e5f6, mulmod(
                add(0x2c5d38b9851b5fc19ef66ac9052831d1, mulmod(
                add(0x619f34894ab3c947272cf8c3fdc94f7, mulmod(
                add(0x208be49c78a5b12e7af7576b8780cd2c, mulmod(
                add(0x113a1631f7ac5645f544cf55db3bd2cf, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27c84e5ddb1c0575ebf257717cd1e7a7, mulmod(
                add(0x20a249af075c5f0e52e614eb3b065eee, mulmod(
                add(0x2ad5898e3786c79d432e566c163b2b60, mulmod(
                add(0x19d13594f69c2516ec89c786f49477ce, mulmod(
                add(0x20cc506c441afbf7287c0ab2e9d657a, mulmod(
                add(0x2f38a2e2c9a9a34d2990c8676804d07d, mulmod(
                add(0x272cf1be0746374f3db79423f028436, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1619b8856de12a4c1d4f0c88970346a6, mulmod(
                add(0x1e901e1e938e7f515dfbdbcfd5f1346, mulmod(
                add(0x13c23e30e464f34bf8dd17dbe0be0caa, mulmod(
                add(0x267bc25c46d99619c7a3fe845377f942, mulmod(
                add(0x2455dba6272f351623c3c6d62e42625a, mulmod(
                add(0x204eecf02649d40960ce82e28ec5c130, mulmod(
                add(0xde5ab1c29e1bf01ea328d671807919e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x203685151066d20a4167711d4b8ae952, mulmod(
                add(0xe85bd8e869772e36a075e4bb768e1f0, mulmod(
                add(0x11fe3828acbf332581648802f7b96611, mulmod(
                add(0xa3753bbc3dd4a04241f0aa6fb65014e, mulmod(
                add(0x27c7a4c927b6500e18630724d635f3fd, mulmod(
                add(0x24bbee0e1d02fab758e9706d667b5bf5, mulmod(
                add(0x18c0483fda21f4d1f071061c0efe44fb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ac6de3ba4f7672a16e5e8fd986db2e7, mulmod(
                add(0x13642c16cc9422ac2b7e675912158ffe, mulmod(
                add(0x26e54f9c3f25345185ed3574a41f62c9, mulmod(
                add(0x262204f27e3e8d69d204b9a6e6f4ccfe, mulmod(
                add(0x13fae49fc3ef38ac603a80f36a13b764, mulmod(
                add(0x2b99c51b84adbde1c0a43ae111d27df9, mulmod(
                add(0x1043277c46b7f816f25fa3c490f5dc96, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x82e3f9e28282ee3133a7731f1882cd0, mulmod(
                add(0x2cefc2aec5a0bbe01bd4c187d39dd52d, mulmod(
                add(0x6c86607d35213946024c805cfe6395b, mulmod(
                add(0xc4936e07832898662013acf473fc0ec, mulmod(
                add(0x11c29d928ad3f2eef8894710c0cd6c4, mulmod(
                add(0x122e5119565dafdc43014a2e0a974604, mulmod(
                add(0x18031aef08d76653bd4ef5cac4029243, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15563b2eb9ffd6aa97b9161181b81796, mulmod(
                add(0x193d468f9f11b20bfd3b8a15d8948bf, mulmod(
                add(0xb3d893d451079528ea3f58843b1fcb5, mulmod(
                add(0x238b4865a98ab381031839b4fe1599e0, mulmod(
                add(0x9b6f8b580aec36cf8ea487641901ef4, mulmod(
                add(0xbb9a800722bba2814f1f4365758d7fe, mulmod(
                add(0x21f0b1e1b97288c6b113fdd632dce20f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1cf0c5800b3ee465dfa09d0f581f2ed9, mulmod(
                add(0x266cbcd0c3991453142a97b880754f20, mulmod(
                add(0x1f1f5734fe63058b4e6bf3d04a5f20e3, mulmod(
                add(0x6b2d621f359afa08081eb259c8b1de3, mulmod(
                add(0x158dba09841caa47beabf620bcc8fcba, mulmod(
                add(0x22136769f998581f0e28116c83e46778, mulmod(
                add(0x2205bb6e91b76b8abfe2c6cffa4be7e7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5d297e1b0d75bedef5afea16a37d025, mulmod(
                add(0x1428bfd98479b0cc13050c68a8143dee, mulmod(
                add(0xeec18394ec9afecbdea4e087587ad4b, mulmod(
                add(0x1149a25f410c815271d9ccb07c49cb7e, mulmod(
                add(0x9d65c808eb39255a105dfcdda57cf91, mulmod(
                add(0x60f74d3b92d9eeee2fab9135f40d0f8, mulmod(
                add(0x17ce167506b6d7e0ccbfd0a8185e4a23, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2477bcf1756588718841c2cbca0a9db6, mulmod(
                add(0x1087be27a6043090fbc40ba2173ec824, mulmod(
                add(0x20e33748fdff54de1c066abb9c07cc20, mulmod(
                add(0x21195f62fb48fa195c8c8c69727cafbe, mulmod(
                add(0x150bc1b855dc290c75fd6533456562a1, mulmod(
                add(0x45e6a9c9eac428c3e6bbf4de92bc6ce, mulmod(
                add(0x21076e5f2cbd02227d3eff4abbd6d2cc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16a6c14a12499e2efed84e98ce3ea5d, mulmod(
                add(0x15d69867d0bec45b08d858d47a294601, mulmod(
                add(0x243c535beb6329b777915190abeaf14e, mulmod(
                add(0x1c072cd8b22d1e190b48f7e2d8b94df3, mulmod(
                add(0x2a3e2e00ab05c8ea55b4218ee38f8152, mulmod(
                add(0x193f86cdb35eef5d83cbef9fb1b6748d, mulmod(
                add(0x2a06cddb35101b314ac657c9f11ba5ac, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x229d968052ea16c3636e583a98296c76, mulmod(
                add(0x2d7e9360c98939e63b738e706b9c4310, mulmod(
                add(0x2dd22f26c7ffac2665e340d7f8c64f2f, mulmod(
                add(0xab4859efc3f4a30b6c69c2c0db3d7aa, mulmod(
                add(0x987c721a078274717d3709b0495b6e2, mulmod(
                add(0x19a4d4eadd21b0e2b9bc6d0c2fce5ca9, mulmod(
                add(0xd729e7dc5813e94ae1ec580d882eb08, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xfc7b9478145879fd6079dc197f31849, mulmod(
                add(0x104daa4901bc6aac933b58198571fe70, mulmod(
                add(0x8b5b9d06fa264d5ef0ec01be0aad6b8, mulmod(
                add(0x1339b204b22cf04c76cde0988467407, mulmod(
                add(0x232b6d74d763907dddda58b3a1243e70, mulmod(
                add(0x229ec6ad42067286b176f741335e63cb, mulmod(
                add(0x1f8ed122699047e70b2c35bbd80a3a7d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3d56f6ede4cf8d0f28e65c0eb71d81, mulmod(
                add(0x28a3ea6fc31eb585f59277f1ae078993, mulmod(
                add(0x225425ad582e8bd2bf4b0cdd0428acc6, mulmod(
                add(0x6149a979cc0deaf50fb9038a8cd0d53, mulmod(
                add(0x3fc309136dd6a12e0f5e83854b168ff, mulmod(
                add(0x1b65b7304b4f225fa17f752a0294028b, mulmod(
                add(0x2b7d4a5d9ad5490ed0a681d30b26e87, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3920a8e56e7e6e26c3159b9b76de9b1, mulmod(
                add(0x2c8198d1b0ce5445328d377d571aa026, mulmod(
                add(0x1204c27ceb4c92f8c3971181c59778a4, mulmod(
                add(0x10806123a3f09005f3b88a99c5651436, mulmod(
                add(0x1ca11c4610fedde75c3d6c2a0ac3b3f3, mulmod(
                add(0x1f8e25e0aa196a251db050b10ec86967, mulmod(
                add(0x2228cc489c9b1b80115866379eca3827, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x713917866fa40a4786dce934d1a69ac, mulmod(
                add(0x28785a4d4bd98a3420a87c0a97c8c9bd, mulmod(
                add(0x1cbe7216a3fcbd5e0c9a8932fbca655e, mulmod(
                add(0x95d841fe127d02fc0687730a92e1c20, mulmod(
                add(0x1b82554415f38eeca3d78a7818eebd9, mulmod(
                add(0x70642a5957d9462cc3e4e76f6d7a93b, mulmod(
                add(0x2528565b54e9e8b7b4346f7575422ff8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x59bec289eeef0a54a78ced82e4a8936, mulmod(
                add(0xcaa045a6814f6d4f4dbce31b146958e, mulmod(
                add(0x1e142a7c7f052a552a531851604e2da6, mulmod(
                add(0x21ab8351bdfee9cfd1412ae65f9341f2, mulmod(
                add(0x1232b92589bd0025f89be4db790dc574, mulmod(
                add(0x3eb17b7fe3177ea12ea76fb9340af65, mulmod(
                add(0x2224ada840f5c00b4a759e428254dace, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1c5e27493f06335e1308ff680b82e5d1, mulmod(
                add(0x151fb1ac34085ed2d66e7b7fd6124bd3, mulmod(
                add(0x20ff942d5242c2f87da02808db2523e, mulmod(
                add(0x116b7dcb1ad9920116978db2ca67bf72, mulmod(
                add(0x167dd9b68860eeeb6004834d5927a39a, mulmod(
                add(0x280cd5b1b66425b2d5c4ab5e49c4a9d1, mulmod(
                add(0x27312f9852e81b7e978ab9d377352674, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x34875004771ee30f815681953dce4f0, mulmod(
                add(0x1c4b3f92e46c722aa611149affc5a232, mulmod(
                add(0x11bc102ef121337c535167cf5b0ad9dd, mulmod(
                add(0xb1ca7d168207ec5bf055bdbf416f01d, mulmod(
                add(0x239ff05ce94d8806bcb1c7c4048a8d00, mulmod(
                add(0x2fcdc1399e7db2957d7a5bcee6f4a7eb, mulmod(
                add(0x1040f5ea0a8dd874b8897488167aa983, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x54d862ca4c0865adc6f846c69909307, mulmod(
                add(0x11967facb305c796d2d20572758d9c53, mulmod(
                add(0xf643bf0e930f24bc935a0a234e254f6, mulmod(
                add(0x12f7c55c3088cfa7092df0c1da3884ab, mulmod(
                add(0x28f0970f69d998342c7995d540353279, mulmod(
                add(0x2a0f0050a6cdf51e5dd723ef818bd593, mulmod(
                add(0x13efba7bc9e183ca98d3343545a3b30, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2671e17a63b3ac26f78559bd7a7003ae, mulmod(
                add(0x10a96930b330f2c164e3aaf7c217fdca, mulmod(
                add(0x266b04b9eece5f58ee86f2ac2189e59f, mulmod(
                add(0xbe0fa11eddbf98a941d2d62f62c55ba, mulmod(
                add(0x2d09965b36a19e9852f698d5029b7133, mulmod(
                add(0x2663661d85a4918c8d0ebddd7cd38b72, mulmod(
                add(0x9f638e7558787ec689c19d57ac1338b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19e90f600e72f9ce8727abad7fb17c, mulmod(
                add(0x1612d95ad77fbe8f574aab9c0b0a8f22, mulmod(
                add(0x1f2ffc1880991b556c2b7a4540340000, mulmod(
                add(0xb830df30b79524fecfde08f8975b971, mulmod(
                add(0x1695b6cce651982f91b277a296892e09, mulmod(
                add(0xbe67ba117ad9c90a194ff4bf9560bb3, mulmod(
                add(0x2aaac3f59ae0dfab2e177a71cdd29e70, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7e2dd09fd1543cd857bf3d2ce884fc5, mulmod(
                add(0x1cab65b3982ba8f4c221f17759b795eb, mulmod(
                add(0x21297aa871a356bfa56758a77b69d269, mulmod(
                add(0x24f11e4167bb06741e5fa546099ab9c9, mulmod(
                add(0x158f5823048d76712f201cefd4f7c901, mulmod(
                add(0x1030819ad80106c54576d78b42373bed, mulmod(
                add(0xa24d4788ff5340e001e34f4c696a3b4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x21f9b2a0bc21ebb8519e8431833f390c, mulmod(
                add(0xe143bbc81baaf3bfda7b7cd9107cea9, mulmod(
                add(0xede3b818fbacaa01ebc12d45910222, mulmod(
                add(0x14cfda3449ac4361cf96f18ae7198245, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
