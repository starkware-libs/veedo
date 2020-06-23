pragma solidity ^0.5.2;

contract MimcConstants2_1 {
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
                add(0x3126231fb17179de3904df91be86866, mulmod(
                add(0x2db76c5f1d9484689892709ccd6846cf, mulmod(
                add(0x254878986587ac85e379be6f33263d51, mulmod(
                add(0x1eef450fe95ac8479071e1f98f8f8337, mulmod(
                add(0x25e65144082566d58d37460059e54914, mulmod(
                add(0x261ca6cbdeb68ddd4b820044e0c8fc6a, mulmod(
                add(0x1a6377e73f481e82f21b5eff956b5530, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2366384c533be842b733692ffe565ce1, mulmod(
                add(0x1f4d59d92ea0383134391a58493dadef, mulmod(
                add(0x1dc6452dd11aa78d58a4ed6753483cf3, mulmod(
                add(0x2ef014868e1fe9c41f9d782100ada905, mulmod(
                add(0x25b536692ded0e0038d78fdba7641ee, mulmod(
                add(0x816cb09b4df07ab23f46d6013c4e73c, mulmod(
                add(0x1b6bbfb06c7379a0b00db0e4cf763873, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c05e5fefcd6699a5b39870ea1c5cacf, mulmod(
                add(0x89e817e16d51cf5aa39c2d022c6a0f9, mulmod(
                add(0x45cfdf64b83f0e5f94bb7124830c764, mulmod(
                add(0x415fe16aa130f177ffcb4ee9534177e, mulmod(
                add(0x1c0cebbb0b1e24975dd7f671d5a5ae30, mulmod(
                add(0x2bf0cfb36bf8959d036545f7b325ab4b, mulmod(
                add(0xbf2c07e9121ee081bdda4ed9696c351, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29343eda97464f47a44c7a61c072bca6, mulmod(
                add(0x17575a521d2dfe9d58fc701936bbeacc, mulmod(
                add(0x2aa439f295dda38a898ac8296eb412d3, mulmod(
                add(0x210153767ecf05d2720b893aca4fac92, mulmod(
                add(0x237d86cbe5362611df40aeab3221d95, mulmod(
                add(0x237b76abd7cbf8a38a3699d4353a07a3, mulmod(
                add(0x1799f02ed27a04437831e2aeb40266cf, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3bf14754e7c635bac4bd8370368557f, mulmod(
                add(0x27b9a4685d3aa1df39496c3bfd3d6154, mulmod(
                add(0x23aae0bf46249ae4a9c99b3b6e81a336, mulmod(
                add(0x2b2d356b3c3d67805fc2b5b223dc6602, mulmod(
                add(0x232d0323088f8a0be60d0a09be758b7c, mulmod(
                add(0x2b84e88f5637bde543e81698dcea3a3b, mulmod(
                add(0xa1cc2aeea13f41436a333bd81354865, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x247d8799245dcb984778172fe6d1fd60, mulmod(
                add(0x1be26db9a0d268851f6165f1f7102dae, mulmod(
                add(0x1a5f55bb5181d380836c075d04062c4f, mulmod(
                add(0x16b5f019a9855118f9c693ac606605b3, mulmod(
                add(0xa56108b5a33789efc8da644662957f5, mulmod(
                add(0x1a11c26c52c1328844950090748fc325, mulmod(
                add(0x27b731d7d4bca710cb3ad37e9ebca65, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x74f971807d9ce803d08b8c4f8bffc44, mulmod(
                add(0x20444fee444b817af7da31102ad14046, mulmod(
                add(0x105637e374d9ae43f3632c964797b29c, mulmod(
                add(0x2383d6cd06b27e2f23836929faac4607, mulmod(
                add(0x1f5ca0c0a06cba247f273d8a09381863, mulmod(
                add(0x17abc6848a41e7ac3502a3448bbda33c, mulmod(
                add(0x7a634105c27008ea424178bb0763b6a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1de4125bacd3a39ef9400d9ceeab4907, mulmod(
                add(0x925459f2f8755f830d7b1f94d15baad, mulmod(
                add(0x1790ec2d3b460354065f8e392c732e6, mulmod(
                add(0x91b46ec8656d3d898059764ef797ef8, mulmod(
                add(0xed93275186dc3243aa01965c015f189, mulmod(
                add(0x17504adf3f09c4a05cac0c3dce4c2ff4, mulmod(
                add(0x14a2453024fe50a96adbff5036e5b7a0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d2ec61a2021603567e2fd8a6b33fd1f, mulmod(
                add(0x1955f7a79f02e6ae68fb4f71397d4f31, mulmod(
                add(0x2c268dbf9e1ce3f01c8bcb69058123e8, mulmod(
                add(0x2834f5e3d157a780b432d7380da55d6d, mulmod(
                add(0xb8869b7a7a3a3ce305a932053dc671c, mulmod(
                add(0x164614fa712a8ef9f6f1b6c33a354b00, mulmod(
                add(0x22101051b30086715a9235e1049ea00b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2fbc3638a0eb3245ffc21ae8fcfa392a, mulmod(
                add(0x28551e449ffdf872b703c8f58e263d5f, mulmod(
                add(0x10e2bb85d8acd8afa8298d4c7d34f9ac, mulmod(
                add(0xcaa369644403ba4ad5ccd0fe022ab67, mulmod(
                add(0xba28c0209ffe307e471237b820abd62, mulmod(
                add(0x2cac95b799223b571b11cd8bc0ed445d, mulmod(
                add(0x16438f25f30e9044358e25cbef9f2abb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23cde7612482898b2ccd50d026212cf4, mulmod(
                add(0x1e194f804464b438a356f66d26dc8c15, mulmod(
                add(0x1b26beaabd5e752f7a9200857a9d6d1e, mulmod(
                add(0x14f9fa990d032c8e42c22de4bd83ae12, mulmod(
                add(0x1c7292b03dfa2751215b41e8d46b292d, mulmod(
                add(0x1fa541bd6ed2b1184eb3a29e5e3d28c1, mulmod(
                add(0x895071025d2f64d2d3780526017bc30, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15bec47580c85e1065cc7a821f0121e4, mulmod(
                add(0x1dce36a462b340416d7888fcb52284bf, mulmod(
                add(0x182f0f4d905319d761c19731480892eb, mulmod(
                add(0x29b6f7f64d7be93122e570eb85f39e30, mulmod(
                add(0xee667e8c7606d4a6435f77ae8bfc6b1, mulmod(
                add(0x261fe85e48741cce4292a844174c6605, mulmod(
                add(0x1d175a61d808dbf8dbddfddce88acaf8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x21e6170e24ef24499804c89ef710380, mulmod(
                add(0x1e4ad4c802e3d1ee4ecf684664dcd18e, mulmod(
                add(0x1e669c0c7abbeb303c903767bbbd53c8, mulmod(
                add(0x681e456cbe99b9e48d320615b2c4bd5, mulmod(
                add(0x22c142dd5b79d6c0aef20260bc045ed6, mulmod(
                add(0x22cddd0537e5b291365f4b610f2181ee, mulmod(
                add(0x29ff32e6ccc127763a4dffd94d4ecb0e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x295fdb51a8e204c2d238045ec7b031bb, mulmod(
                add(0x15fef12cf9fe672be52a8dd5cb58cbc2, mulmod(
                add(0x2938dcfe5e7d0b693539edbf98394e35, mulmod(
                add(0x2f3013ac0bb9c5cf88f030abfd4c3466, mulmod(
                add(0x15cfbc84ba440dce7f8e2dd33e072617, mulmod(
                add(0x21af916c7638a547055517c3a6b8a26e, mulmod(
                add(0x130438039f0f80b18c962d56d060d0cb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2bdb746a87084ce0f72bc8e3fb275b10, mulmod(
                add(0x117fe243776be48f97c2d412057b079a, mulmod(
                add(0x2dc49a9457fc2fdba89200d23f2f0815, mulmod(
                add(0x2268eecfe8738f095cbfbb087786edbf, mulmod(
                add(0x24035bd0af065d971b26e14301b1afa, mulmod(
                add(0x1542027bcd623055d440fe2c174d9f50, mulmod(
                add(0x2e12f07d20309661fbfdc5957fb769ef, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x214fa2786f367cb5be4e202625dfb8ad, mulmod(
                add(0x213ab33b473656ee0e552884ab896803, mulmod(
                add(0xfb3d6d3a3d189452242f22f3d944444, mulmod(
                add(0x1eff0ac5f558da65ac134d701a47fa46, mulmod(
                add(0x2dfb03689e0d19f5e868a7f543aa53d8, mulmod(
                add(0x2e4a467f2c7dfec4a69e91c63b7c2f98, mulmod(
                add(0x1fc19f45f86cae3d7a9bd9037e01a1a1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd93bbc05330a55e45a236369f88d3, mulmod(
                add(0x173a87c4cd1e1e8f42902817c357d324, mulmod(
                add(0x2f4b9431e1c13fea1fbf07227f215734, mulmod(
                add(0x2eb225ea4a8da5aaf03c2dcc58f67f34, mulmod(
                add(0x265b0a7fdce903e3dc6aba791ec77f6a, mulmod(
                add(0x2efc565c5e20f3c7d3d58ec14163290c, mulmod(
                add(0x12d7fd2aae77cd7d7947ffdcb66e90b0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ebbb9b5144c4b2b8f33703d4379263d, mulmod(
                add(0x6a9ec3985373ac77368d9f8a7bf4086, mulmod(
                add(0x7b255bd2261b2ace32834ce9aaacc01, mulmod(
                add(0x2c77daa7ccb4b85851334c202c92e4a9, mulmod(
                add(0x1b5a95a553ee31046052b1c2dc62b334, mulmod(
                add(0x7e989be3d653bdd3e892a63ae1593b4, mulmod(
                add(0x1b9cc0b8a972fe98d49edd6cf50ed2f8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a17f1662507104bbbd780bfcb1863fb, mulmod(
                add(0x1cf7c9028fe502d2d7e1fe68e793b718, mulmod(
                add(0x2ad4107be94167284ba5fa67d227346d, mulmod(
                add(0x199beb5bef905f85553159f5807f6509, mulmod(
                add(0x266f3f034d9890dab4739d6e8a0dca47, mulmod(
                add(0x2929c1fb46d138684a820d4244b2e0e8, mulmod(
                add(0x43fadc05a014c65ca58511afa3a0524, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2aa5d6dedac97e27a0a4e2d3bdb9c008, mulmod(
                add(0x104fc1730759f5429a89d8268500e6ec, mulmod(
                add(0x78e1f6cde955952ce2213247b30eefb, mulmod(
                add(0x11b7b560249138948f989fd30cbd3648, mulmod(
                add(0x3b4331b3936532f69d0db92811f48a9, mulmod(
                add(0x654c51353ea773ea7b33aa2a7ae91e3, mulmod(
                add(0xca29bb9fcfbc8192bccefbf70f3cc0e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1db20ee78b20813ecefef5a78eb8003a, mulmod(
                add(0x141dcf7e6f56799bcf40254e24848e5, mulmod(
                add(0x28cccb004cc29e01f3daa151031be5fb, mulmod(
                add(0x1dfde2a4468aeec07b512de127cebb52, mulmod(
                add(0xcca525e5b1317ab330909a9f281b44d, mulmod(
                add(0x11b21439b9c3cef342f25efc6694e71, mulmod(
                add(0x52c34ad4cee517955a68c3b087a4a60, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16142b5c1affc83b44e0877e0d3cdf6d, mulmod(
                add(0x1390ca053ccea460e8574c65f5fdda6f, mulmod(
                add(0x21ea2f1f611361bee92c75d264e15d7b, mulmod(
                add(0x18e77772df18080c509dd28f5ddd1cff, mulmod(
                add(0x1e9c79f43826c7317781a29037c9a2e6, mulmod(
                add(0x104b64d9baba2707ad855d0f82599d20, mulmod(
                add(0x236504c507e42d2e91f63b45a3de972f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1fecf3c7b3d2f0f24a421ff6c1593e4c, mulmod(
                add(0x2f20f1abbfb9c1471903e2e519efe022, mulmod(
                add(0x93f60aef1120d64acd76f03b4d6f98c, mulmod(
                add(0x2b143207ba3e601850b482516d2164c9, mulmod(
                add(0x235921545352dc491fb17199648570a4, mulmod(
                add(0x24189127d65397b641703bd7fec8fea8, mulmod(
                add(0x18aabbd61dc0272f3a7f7f2c84c4743e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2cf68027ea907d9503fed0fbb5fa21e3, mulmod(
                add(0x12954570a9a4b6289dfa3acff7e1190a, mulmod(
                add(0x44c80225f0e9cede1e71c37198aa3cb, mulmod(
                add(0x51a83b588315b2bc12f5588d90f6a3e, mulmod(
                add(0x274a5e8383e7f4151021bb9fcc688fa1, mulmod(
                add(0x2caf7ec2768e4cccc0a3dca7b1bcb2e9, mulmod(
                add(0x2f74128652f2a7b664bb1459cefe8f97, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24a254461e8a290c51d9f48292abd965, mulmod(
                add(0xf49f4fca66d8da887855202f809897e, mulmod(
                add(0x18a7e79e49d08773117e8cf7b8579b62, mulmod(
                add(0x1dd3b4cde5f2a36c917325fe3bac58a8, mulmod(
                add(0xd4405878fe7f6a87b336abc46b1148c, mulmod(
                add(0x148ed8df66ebfdef1ac59e314e84575d, mulmod(
                add(0x245539a8fccb8fb4fb6e44c774658b76, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x93a9574d81ab226b1b2cbe86916ce1d, mulmod(
                add(0x1e78d99211740382a2a1328722157184, mulmod(
                add(0x2acb3d6332468513e7c9fc62cf592b10, mulmod(
                add(0x203d652abccde6f9a4d35f1ce99b0d9d, mulmod(
                add(0x2b9d38e36c76e558d1fa1c2f6fd5a366, mulmod(
                add(0xa59fed0303ceef94020d5f40f75ac84, mulmod(
                add(0x2bb02a4b481acfa31a7131591fb57348, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16c6cea8c4da184fca88ce384cb83afd, mulmod(
                add(0x2f73e84f8dcc9b140c9de974caff3704, mulmod(
                add(0x53da02d30d6b5f15e4aba3424781de9, mulmod(
                add(0x1fda3e23077034c84ca0e5842ebe0043, mulmod(
                add(0x161e03de0191040be29d06166128df27, mulmod(
                add(0x223c87525c08ba250363a0ed53db37e0, mulmod(
                add(0x2de751b48cdb7c2a4831f57a9befd7a2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2defb1dfe9539af76632c2cc7a55f367, mulmod(
                add(0x2faf4ddb0d28d70d8cf8c05ae07a5865, mulmod(
                add(0x3baa4df1d35a96a41c3c04a2d99d349, mulmod(
                add(0x20826274fe2f92a2a45af729c4f7f818, mulmod(
                add(0x2e5c5e0c66e0aaec1510ecef9ce37877, mulmod(
                add(0x25ff8724d39351cf3da27945b6c637cc, mulmod(
                add(0xbf8eb54c3bcecbf6d6bd282a4bafaea, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3b39c30726e8036ca4b21d7052cc502, mulmod(
                add(0x1f0a81c1612aa3461ca32eaaff5f6fbf, mulmod(
                add(0x19bb10c604cf4c9d601a4a7351fb7b1c, mulmod(
                add(0x2da54839c62d3fad3545a3a7dc44e462, mulmod(
                add(0x1648cea96be36139055dd70dbe1f398b, mulmod(
                add(0x2a736c1c8e6552756459d25da0f3b256, mulmod(
                add(0x2271a35c5e9eaf4ef6332d4fca8f4354, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2eadb5af51ef5482479ec8c0d50df0ea, mulmod(
                add(0x18a1f43bf0d81d1ada578bb79926ac27, mulmod(
                add(0x2502a2dfdaf269540be91403177065bd, mulmod(
                add(0x265a8bc6deffc3ca1bd9b6220f0e11bf, mulmod(
                add(0x12e3f97347a707a87283e5181d87b200, mulmod(
                add(0x14acac153eb2a4a02d9ed5fdb0c06260, mulmod(
                add(0x299250b252c884db354950af63d160f7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x187bab970fc1736ca8354fed5c255e38, mulmod(
                add(0x2a1c053e2397574156d9fc7779448517, mulmod(
                add(0x1120cd7ba01981082f06e8bdb8ab2791, mulmod(
                add(0x2090c1c37e8aaa4935734ed2c67be1de, mulmod(
                add(0x1833342646adc1108ffa80d2d030c694, mulmod(
                add(0x2d54e43acf9b58956bb4738bf12ef58b, mulmod(
                add(0x133f96ef522c4570c049b5008c058c28, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd6fc487fd4f270cf6084350e5c7e3e2, mulmod(
                add(0xc918e9cec20d8d56e8019b3eaf47ab3, mulmod(
                add(0x1e2300386bacd6eca3803c092c98c3a, mulmod(
                add(0xe2bab6f9d7920a0eafa01bb4d8cb1c8, mulmod(
                add(0x4760cc065492903cb5efcad1ed06c64, mulmod(
                add(0x1bd1df9a2edfb642a707b696e55491f3, mulmod(
                add(0x24c42bbff0a63528cfab71fbd9a9f8ec, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b89df580f48078118a0668703e82d83, mulmod(
                add(0x140358c64a9d66c106df1b9ac9a073fe, mulmod(
                add(0x2b8cb480bf066459ce5938f1d7e836f9, mulmod(
                add(0x20271025292fa6da98dcf246bcd22b22, mulmod(
                add(0x6b2c5750dbcf295be1202dc32efa1bc, mulmod(
                add(0x2a317fe432297faa76b1c96660953df5, mulmod(
                add(0x2067470eb2cd543fc22bcd80a4b330e0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3e07b1d55e5c5f13bf7c0096f29eedb, mulmod(
                add(0x1c6183f0df7a91c00096e7f2e6d1708e, mulmod(
                add(0x136839d7441732a4bd8b8d6d9cd87196, mulmod(
                add(0x2e0a15e4cb0f7fe8996f6a3c5c80a24c, mulmod(
                add(0x6d836d210d721a80b8d85bf3bd87b21, mulmod(
                add(0x11e3d574b8a7d7be82dbec235d8d2fc8, mulmod(
                add(0xceb59cc2f9a987c2861ee90dcbbae57, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x261cce61911da535def79fb4263bf85f, mulmod(
                add(0xdbfa52573a15621f3d811523cf57868, mulmod(
                add(0xa120435b2eb5e62a68df47fcba1919d, mulmod(
                add(0x1ecbbf0267ee364baf29ad53af7c4e3a, mulmod(
                add(0x8a8e3a9a54767d10f35d977e13e2207, mulmod(
                add(0x3536feab097b99bfed275f679a7fa8d, mulmod(
                add(0x135a340c3d6aa6d9dc71b3f1dc04d0c4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x248b5f520414ab45d78cf5261de52fe6, mulmod(
                add(0x1d0805aa61d0406eb5a2e576418e8a96, mulmod(
                add(0x3af7a713e7f6101ff214183ab97c8c4, mulmod(
                add(0xfe728f28751f77efffa7d0aa4391ef4, mulmod(
                add(0xbbb37fdf5afc91d8447709d632b2b7f, mulmod(
                add(0x1f07f93bd0dcff96e27e87d778576a76, mulmod(
                add(0x1014da2ede7458512a1e35790b9e303f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x126248bf54631d19f0227de7e2094a6, mulmod(
                add(0x4ff9f055eaffa01db5f30f8aa5e4d32, mulmod(
                add(0xa8ce9c01f38d93d6c79645299092791, mulmod(
                add(0x20c7fd0c382519927371cf0787811b3a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
