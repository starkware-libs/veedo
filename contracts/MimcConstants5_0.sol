pragma solidity ^0.5.2;

contract MimcConstants5_0 {
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
                add(0x1c9f27bfbd88f18edcb08e4a78355cfd, mulmod(
                add(0x1b4e86ff77772be561c127e9a42d8e94, mulmod(
                add(0x15a5de35ae7bfcf36f0f776d8f21070f, mulmod(
                add(0x266869ade499af22beabbf7eb70be7e7, mulmod(
                add(0x25f0f7df6e18d629c5946233d6ea2cac, mulmod(
                add(0x9516d75ec35c647c00810d0aa7f04c5, mulmod(
                add(0x1e0f82f40071779db59ed6629f1f361d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x13818a538a6476bd77576e4b133b6be1, mulmod(
                add(0x1cc2cfb1ffc356e9f030811c3346e8, mulmod(
                add(0x11c520a94aa6a19892a633023b53f8f1, mulmod(
                add(0x11e24903da842b2873738878c8e334e7, mulmod(
                add(0x2b896b74fad6d300b255ef48efe3c184, mulmod(
                add(0x1fa7d74b0a0a175ed3d98032205e9656, mulmod(
                add(0x1c30c0043ae5e851905b267bbd7748d2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xec666e9a7b79904f55cc76e51f29852, mulmod(
                add(0x1613867d09223fc44f265dd9fd067d68, mulmod(
                add(0x2e604e73df09ff667480dc512bda3752, mulmod(
                add(0x98ea98f79d4fc5b9e566c1128b2ddec, mulmod(
                add(0x1e070d2abc7ef790f891a7dae79bf852, mulmod(
                add(0xf07f0c688dab8e1c241ed3bf16429fd, mulmod(
                add(0x27c6a85c076383672fda01c946489735, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x222695b692435851e39c3c083e4c8fc1, mulmod(
                add(0x251f078ff8a2e724626156a72a7e1f2e, mulmod(
                add(0x16e205531a1891664725ea39c07a7d82, mulmod(
                add(0x2e97b6e2ce8a8c7db2f5ad2ee8c7dc68, mulmod(
                add(0x3f2abde16f61b2ee23877ae71c1d87f, mulmod(
                add(0x10e63741228ce4d61454bcefc5f6d7bc, mulmod(
                add(0x18d418d3c381683147780027cfea1ad0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d741e54659ea1d91c7c66bad25e8e51, mulmod(
                add(0x2161a68a4e902b3eedacaec36c32184e, mulmod(
                add(0x1f160a81866aef2a6164a7f227be4bc0, mulmod(
                add(0x1c09aa320393575178c29484c38b3bcb, mulmod(
                add(0x1ca2158309544551250f08564ba2a6b3, mulmod(
                add(0x278cffb08f946abda62cb79c1e10e9f4, mulmod(
                add(0x2f5bf5556b1ca858bfc55242ef9a2ef4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16e2de9257cba97f1f17b424490027b7, mulmod(
                add(0x20fb4b8952faa45b1b9838e0faf6898b, mulmod(
                add(0xc29f975d263e7aed3e783c4b218dfa2, mulmod(
                add(0x627428e390b3b601207ec850cf5de83, mulmod(
                add(0xc16a0a5bc4bf23819a94f1c8881f790, mulmod(
                add(0x1cd554a0c94e819ede97790895e739f1, mulmod(
                add(0x84f7c5d3632171fab8d10e497e5eb5e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x198e62576fdee015daf518e935071515, mulmod(
                add(0x4789e64efbc0181e508067119bf1232, mulmod(
                add(0x12ab40ca9c46476f9847e9cb5b427930, mulmod(
                add(0x165a7893fade6ba11e0612a0443109b6, mulmod(
                add(0x10acea4e37efa0098cbbc68b4374d423, mulmod(
                add(0x6d0beadbd0a47729beb5f64435274a9, mulmod(
                add(0x27769d59b8ee7d4f972b395049c56133, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x158bf15a77c20be8351eb1d2e78ab0df, mulmod(
                add(0x23659471065f8d02da221ef2fc4786b, mulmod(
                add(0x2162488357a30bd2212aedd5a6d095e8, mulmod(
                add(0x179407de90b5d23ced1bdbbb514289c7, mulmod(
                add(0x1cb78e4d792fbb8b330fe4558bd76c46, mulmod(
                add(0x1cd0eb693d367665c3b039cd62616578, mulmod(
                add(0x26ba3400628e57c8a2fec7854514309e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x10f7934f353517bab9dd0311ce63a2d0, mulmod(
                add(0x25d39a9d491b66163f8211558231f364, mulmod(
                add(0x2c79d9f25ed6da815d11a6198fea1195, mulmod(
                add(0x2a4ecd9cedae4059198e9517cbc6b4ce, mulmod(
                add(0xecf45fb733605ee40263a090807fbe2, mulmod(
                add(0x27286b72ec95a655f9a0b03d04e8c578, mulmod(
                add(0x5fa3c4988404a9e96684527d4578808, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8ee409b4ff1d609a73ccb53d9c2747, mulmod(
                add(0x2fbe4c43e203344fc0d74e417dde597b, mulmod(
                add(0x210e68a23d42c1cae83fffe75c90f22d, mulmod(
                add(0x155b93492cba92c3053c51e6446604a3, mulmod(
                add(0x18a9cbf64fb999bfd67571f7262abbb2, mulmod(
                add(0x2c21510009804b144c2edf69af92c33d, mulmod(
                add(0x2a87ca3959ab99954b69082d174740b1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x31ff284b4b8aa03b0c5dbd7cce2c72c, mulmod(
                add(0x2c6b504ebd792acedfbbcd9118af478a, mulmod(
                add(0x1fa33f76c2a4d7813be794cd92ce502b, mulmod(
                add(0x128cec1cb79027c282cc91be30fd4ec2, mulmod(
                add(0x14f057780fc4fce85475438d85d11107, mulmod(
                add(0x1901a1e79755c4ca8042042820ffcc9d, mulmod(
                add(0x1d2adb0e26044838195c59bcabca81fa, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x745dcf815c73d8c15ad94f80df821b6, mulmod(
                add(0x269eb2b4dcc8b6694e0e466bc33674bc, mulmod(
                add(0x24a615f6997318d987dcf294564f2418, mulmod(
                add(0x624197b592adc68aa4e4f317fd0adb1, mulmod(
                add(0x2418616899dacb7a4b5b3ad21f4032a1, mulmod(
                add(0x1eb48ba12765d26d9d5f611ae98f94ee, mulmod(
                add(0x87a21125d282b8ae584372060adb63b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2768828d98352e2ea9c3d56298b3e606, mulmod(
                add(0xfa218683cffbf0c1ad320b90f0e2c42, mulmod(
                add(0x2fb1897fd250095b1e5239fb2e561e83, mulmod(
                add(0xc72931ed2f9012d47eacfc9ba08ad31, mulmod(
                add(0x1cced364f2e7034b21ca090a26a40115, mulmod(
                add(0x1826260e12098371853ca709ca9de363, mulmod(
                add(0xc53922d96cc12cc760392285a142c5b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1912ffc2e1edaea741a5052f6be0308d, mulmod(
                add(0x2c2bffb77e72881c604bb593fbde5cba, mulmod(
                add(0x2a4fe441c840fdb951436ebdd05a44e7, mulmod(
                add(0xa66b902b97968f32996c8cc2e7dade2, mulmod(
                add(0x19244c47ff5e36c6142abc288b44ce7, mulmod(
                add(0x10908ca017341fc75c9d05b6bdaa6187, mulmod(
                add(0x14099e757fafc629bc414bf8f09c7e5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdd64f615a9c4939778d9d3c6cfdfd70, mulmod(
                add(0x27c2c8408b4cf4cd10145b35aa3809fe, mulmod(
                add(0x27dcc5bfbaec5a93ee34b50bc96eac11, mulmod(
                add(0x274f934790867f92ef056c6872e56440, mulmod(
                add(0x1a35d97d6ebd000673bbe1a02394b331, mulmod(
                add(0x2f28964c49286915c8e6658653d85b21, mulmod(
                add(0x2228cd17a6bfe2eeb0b4b61b542d959d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1406fe98bd77b198e7678e25f2f786cc, mulmod(
                add(0x11b5e8a1bc5135d8338070144fc99826, mulmod(
                add(0x2b2a7cafa1052be08c4f020c8e7a23da, mulmod(
                add(0x1910b87ff4129ec9fe5ccc74ba01dddf, mulmod(
                add(0xbbdbf165ed2dff2facd4ea19f9b6928, mulmod(
                add(0xd6d158a1a36a64376cd7448003efa1b, mulmod(
                add(0x168d8f54762289ea8f393ca45ab7211, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22fd3f341e345fc781b47801d0f992ef, mulmod(
                add(0x10c8b199cf79fc72f7ab10fd611ffe74, mulmod(
                add(0xf401c6fad4a7128bf081543c9ebeb23, mulmod(
                add(0x2d9f95ab9b8dc89a336df3070e97375b, mulmod(
                add(0x1e2dd09dc4141746a32aa9eb7c2d4e06, mulmod(
                add(0x499c62ae0d1f155c705539268d5fefa, mulmod(
                add(0xf0112bfa62bb203c3e0a299f4e62a15, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1cf78b6dd1772f16237ed1b10feffc21, mulmod(
                add(0x20c1bda83699f7ae7029046ba2d4a9b, mulmod(
                add(0x1eb242eb4364d0c0ea9742c4d69df068, mulmod(
                add(0x5227f2aea12d6fb6caaf19b1b01993e, mulmod(
                add(0x15eb261fa60919603bc91d9b1a403f5f, mulmod(
                add(0x1342076957b29719476c6cd547ac6041, mulmod(
                add(0xb495e78ae224ada3b685d6ee5d5b210, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdae0088d0312db7670a1fda2094ac37, mulmod(
                add(0x26635a516bc1ece86cbeb93359a56523, mulmod(
                add(0x9658f8846a4ae47d0222787794b68a2, mulmod(
                add(0xde1fc5f26ef98b54bd94f66be6d9f93, mulmod(
                add(0xcfaf64298a78b46dc7c715c60b64630, mulmod(
                add(0x21c8b76293d0e6304637e2d97270c905, mulmod(
                add(0x16d77999fbce032a569e449f86e0cf0e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x245a2a252579a7e38df61aeec701e923, mulmod(
                add(0x1d40fc75c0f88b87b880976a8cec2acf, mulmod(
                add(0x245ad8a0b5bc8551a0e65f3957bd4fa4, mulmod(
                add(0x159f354323c314668f08a943fd7fbee, mulmod(
                add(0x286cc742987b7bce45853f690d01676a, mulmod(
                add(0x69c1c8550eff3875b410b13f9a08d03, mulmod(
                add(0x1eb5d6c4872ab4c4cf4fdba6afd8d163, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d2b54e2257af6489c1aef9633bba22b, mulmod(
                add(0x1ce247d06e162c6f6843dcd8b0b6216c, mulmod(
                add(0x1ed9c8ba3ca8805c040e6d70930f6f79, mulmod(
                add(0xacc9ab78201b2da97fbd6e9bef3831, mulmod(
                add(0x577de647102a78422d2e6c7829a5a14, mulmod(
                add(0x1b04d7b0d33c283d878169dc25b71981, mulmod(
                add(0x289219c47537c6410c984d0f1021fb9f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x21e871a6fd729771badcd334ef978043, mulmod(
                add(0x1b1173910df4d5d7e4aee0a19ee2204e, mulmod(
                add(0x1ff1bc21df7e70b59ab9de74478afe2b, mulmod(
                add(0x17282cf4eaf58936ac6ee96d4eabe446, mulmod(
                add(0x17c96c29ca7f457073ceab358a47a8e5, mulmod(
                add(0x28b56a19926e2178b6d39eb2f4149b1b, mulmod(
                add(0x1f8a756bfc21df212c261a6504fc114, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20438457d528df518426ea944db14c0a, mulmod(
                add(0x29b3d49a1d7bc9da971613a4f24e9fe4, mulmod(
                add(0x114892fa12c3bcba0d8b4e3554b7ea74, mulmod(
                add(0x170aacf45a4f6fbe54c6107fa1279c9d, mulmod(
                add(0x1a3c20513a68cc80eea34c4a88412d83, mulmod(
                add(0x2f64805964b12f3e904230b53a300831, mulmod(
                add(0x25fcb40d9655e81383e0c8f819ada20a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ba85ec1a6f365bd0d7892e7b1c4f9bf, mulmod(
                add(0x15838dacb02d5960e1e990719a21e7df, mulmod(
                add(0x2b500ecc15fd93f9cc24df87737703d1, mulmod(
                add(0x2a6d9b384f910668cf5142e9a61f9ba, mulmod(
                add(0x227e3956ddf40395e634e79944eab860, mulmod(
                add(0x18a59109431a26abbafde8ca3de73cd5, mulmod(
                add(0x19a169013e0419de46639788aedbfc82, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19307a9daf0a7a76fcbf9e04c807f55a, mulmod(
                add(0x2a7a9060690fb80309f3af8da018e50b, mulmod(
                add(0x2640256a5c34ca12c2f5b241b32de1ac, mulmod(
                add(0x27aea299635a21b8b4b4f0c2f9384f3a, mulmod(
                add(0x1b4cb003633f4f0744d166db23abe7b8, mulmod(
                add(0x1f79c1054eb30d3251aa0c193ec3a9a5, mulmod(
                add(0xc7026582aed93f9d8267c6e2880d923, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xff1434e2cef404d1654bfdeffc0a9b4, mulmod(
                add(0x14d50bc3bc939a3a9673c227f05c85e7, mulmod(
                add(0x21660a7244e6489a694e0a2fe36ef5d7, mulmod(
                add(0x18e34c1c78f0879328950d3010208d54, mulmod(
                add(0x616bb3ba79d3a4b651a4f1909cd5c6e, mulmod(
                add(0x155a1ce39f08c6bc9906ea2d1cec8bf3, mulmod(
                add(0x2e6c2e9edd62a34c63a08e88f35c0400, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa491dc5fa01bcc34c4ab697da0e99fc, mulmod(
                add(0x2b1e6f42534374693b3008426ac35050, mulmod(
                add(0x114a8785c962cc77eae1ded9a23e6399, mulmod(
                add(0x1e9eab9c5fde1f354e8a65d85a946b35, mulmod(
                add(0x1f60a9803608c122ac28665a454b4cd0, mulmod(
                add(0x26935eac171959c8b5c7073877af88fd, mulmod(
                add(0x1ec96f17e2e77bb8bc27749e923d6f16, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x203839a12a37b6e6b4a956c7622b6fb, mulmod(
                add(0x2d4352b14166e65f5da6273f98d63ccb, mulmod(
                add(0x1ec1d9a40684dd3965251b0bd43493ca, mulmod(
                add(0x2bf9cedcb968c87f77592bb45f3a1cc5, mulmod(
                add(0x72ba1392131a26a1518d0ba84d51ccc, mulmod(
                add(0x2ef8cef9bfed695468c787188f98ecf8, mulmod(
                add(0xc5643dbfdeeb08fa28f29aab567b01f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ad16bfe52c18e711a4067197ef06317, mulmod(
                add(0xacca12d0233ff36fc9991b0605bc265, mulmod(
                add(0x2195fbbefa90c3a1c6e2cab448172926, mulmod(
                add(0x122feb49bfdff472b044b834e3985ffc, mulmod(
                add(0x1cc0f381590236cebf7dae0a258086a6, mulmod(
                add(0x2b093272823dd84eec195bfeaaf6049, mulmod(
                add(0x11139f59a75f925cec784fd412d74577, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b4e795b1a8a9b4515ef82e637f301d7, mulmod(
                add(0x32032030ca24523ba27443047ee521f, mulmod(
                add(0x1777dcd52a3992ddd9cd0eb36b8dba7d, mulmod(
                add(0x104478b238cb2e725f7643894eebe102, mulmod(
                add(0x2a93b8523c1c5750cf43fc16292d2612, mulmod(
                add(0x145defa9cc800ce4f14a515f7a955b43, mulmod(
                add(0x1b41d712484fa68d1fa3f6261e807d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x130365ad9c2501b870e4de0fe265eca, mulmod(
                add(0x2383c21ba5fc872a96aa304fa5377272, mulmod(
                add(0x36394f2febfda9cd7e99d5b8b9a7f03, mulmod(
                add(0x2fe6fe5a4d641e9887c55d9e71a7d749, mulmod(
                add(0x71283cc50aafdbb9e85321598d27b0f, mulmod(
                add(0x1c15960350dc7e14e3581eec4a670bce, mulmod(
                add(0x2d943cf834172e469827c99b54811dfe, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x99e263036950a35e66dad6f907ab5d7, mulmod(
                add(0x790dd643de7bb9a7990d63e1af23223, mulmod(
                add(0x21070680cb6e59487064ea29329d398e, mulmod(
                add(0xb561ce538b0a414ce3a16dd113484c1, mulmod(
                add(0x1662ba34815712f8d95e29688902bf51, mulmod(
                add(0x7c1fedbe78d5e82e1cc1596a2a99768, mulmod(
                add(0x80870bdac8ca13c1e8d8690dc3e80e5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15c589676472056943f77ab69c446b57, mulmod(
                add(0x13427734f3e404feb031cbc6e37df648, mulmod(
                add(0x112e3131cc3f5d1a67c2cbd2c606ce67, mulmod(
                add(0xf65fe1990be0eee3fcc023e0849a5ff, mulmod(
                add(0x10caadab986dec3c2003d0ef7538bf0c, mulmod(
                add(0x1279408bebf71f5c1b42b979468afee6, mulmod(
                add(0x9b9e3b00aec8bf75a6ff0aa9f55b98a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x17a5dcb757802c947b647ab2b7697381, mulmod(
                add(0x4cfe5cc1d5b6363085c57d262ae6f25, mulmod(
                add(0x1e3c9a659c48425327285c521ae9f349, mulmod(
                add(0x10a6824cb941441513eb75fd2341d4da, mulmod(
                add(0x15c766417e76cc4cd93163cc15314135, mulmod(
                add(0x1f3d8b07c3359470bbadaff27b4a14e4, mulmod(
                add(0x1db197e7dc978a167013d9b2b4ce9b2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4d5f09a5fd0e4ef1ea36dfffae76228, mulmod(
                add(0x284b7934363c42c66dc4fdd6827cdd78, mulmod(
                add(0x6339d3205291ba085ba84638a8ccd56, mulmod(
                add(0x2420763fd7c28611dad31d3b4fb9756b, mulmod(
                add(0x22c7e127411530a7bd371d88b1d22de9, mulmod(
                add(0x12c4cb8180e739ec6c5f1df42b886efe, mulmod(
                add(0x2db5d6ba9000871d8b21d17dd2f2ca40, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b599bd45f6cf1fe6fb5320d3b2cec55, mulmod(
                add(0x20e36a2a725d1609cb035ac462ec95e5, mulmod(
                add(0x288d84ff4abd3007dab0e9352d101b4c, mulmod(
                add(0x294fa2d914965497a0c60afe03beaa7d, mulmod(
                add(0x9eb795557c863dd625fb37f583962c2, mulmod(
                add(0x180b56a4ac5578f042a734a17b5dde94, mulmod(
                add(0x2b672f683508c41e3c45d823142f8b0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1dc4737b0ad82a853ee67206bd93b01d, mulmod(
                add(0x29c0a6c7c727543735b88b975d8f3c48, mulmod(
                add(0xb58a0279843ba889789dcd329e13716, mulmod(
                add(0x18c8859b7cab8d2a15791be2049d7b6b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
