pragma solidity ^0.5.2;

contract MimcConstants9_1 {
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
                add(0x6763fa4d753cd949c652594b98602d5, mulmod(
                add(0x2f6dc742cf973bf1c89f310e4ba812f5, mulmod(
                add(0x2d7826328ce994306f5a27f7b020faf1, mulmod(
                add(0x22ae92a1f0afcf61bc86dc1a9731c367, mulmod(
                add(0x229fba41474aab669a86576146618565, mulmod(
                add(0x1c81302179341400eaf24cf0510963b0, mulmod(
                add(0x223a302a52a72e0192b55590a99bf052, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x270ea793f60aefaf469ab807fb3d59aa, mulmod(
                add(0x20555d155bc0617bc5c6baebe7695164, mulmod(
                add(0x576a318d079b7f69b7f1cbb72c803a, mulmod(
                add(0x1d2e541f2c2630d55ddebde3bcad0b7e, mulmod(
                add(0x2e29eb0850ddf132c003087b6d017e33, mulmod(
                add(0x98f5e8026075282cdbb7b1a2971035c, mulmod(
                add(0x98cd3939f03bdb59575cc8a51629ee, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a28e097daaf34c58ba18743e9717bd0, mulmod(
                add(0x105e6c01c2225419dbbab38f100ad62e, mulmod(
                add(0x3a365720540d587466bd6a472eb4404, mulmod(
                add(0x167c4d41c4689410f0b01e6be5e18aa5, mulmod(
                add(0x15722ca33190664406a221fb3e2eedad, mulmod(
                add(0x90c41d55570619cd79157e6047efd65, mulmod(
                add(0x1eb1250541589804e56b5596565a255b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1fd46df4f2882fd114c08d93a7529699, mulmod(
                add(0x16be8a71a4b05093be21200cc3dbb74f, mulmod(
                add(0xb8ea714020baf459140809eba022188, mulmod(
                add(0x83f16b6a29720ec9e8f431e0c76f8f7, mulmod(
                add(0x6cd48e8b61f6b562a299b3e0d1fbb48, mulmod(
                add(0x25ad80c8cf947f57f582f71554764d3e, mulmod(
                add(0x7113648154ebc38a7ed544fdc102ff3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15dd559bf3863e1e4607b4550ed8ccf1, mulmod(
                add(0x1c2cf5677df49f43e64d0f34ebfe7468, mulmod(
                add(0x1c0b47bee28b99165202eecbbdce02c4, mulmod(
                add(0x99793db177c458901291968e448acb5, mulmod(
                add(0x176e32ba5737f665b4fbe9d110d8618f, mulmod(
                add(0x1dcdc65c3bb4bbc07c258408d9f95b25, mulmod(
                add(0x2d48a21f72aa9bca48e1dd09e395b309, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5cc61ba1cc4dddfc764fae9c4d159a2, mulmod(
                add(0xad7b0f5fba56a11169d5e8ede76fdcb, mulmod(
                add(0x14387d6f796127fe04a9c17166e2a8e6, mulmod(
                add(0x23ff89049867069c2c1405be876de97b, mulmod(
                add(0x3391082b1c672a098b8daa463fbb3bd, mulmod(
                add(0x177e714a6b2f70981198cab244dd656f, mulmod(
                add(0xb9fed7e20e9c5acf2ba64099d1aaf49, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20ad1b2d5244cf62e94fea40c10d6bb5, mulmod(
                add(0x123b7539be0ca133e6ad37cba259f4ef, mulmod(
                add(0xbb3d760bea85212cc8fc70b4071b9aa, mulmod(
                add(0xed5f3a6027e7f891a781f2bb42dffa6, mulmod(
                add(0x223a4bfb7aa45419766bb4ef109d6093, mulmod(
                add(0x2c7612c35df288600b87a0329f56ad96, mulmod(
                add(0x1d4aa617bf0f64611127307f3eac1324, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x262511ec5ca9c8bebc30c395a89b3c67, mulmod(
                add(0x845132a26d26af5e9f1f254a63234d8, mulmod(
                add(0x1b63c4536da66f1abfda3220a43d8d17, mulmod(
                add(0x2446a22d45dd3511d8587cde7ac1503, mulmod(
                add(0xd9a47f1019f9cd8b6db93b16af0e49c, mulmod(
                add(0x16ce483d06a67fb4ac74ce6e5a18200d, mulmod(
                add(0x24caaa8a30f0764b685cce8b72a0108b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27c09cf17235e72cf35d320136e00599, mulmod(
                add(0x21162e6ec6aa6a9bc6aa92d17df38fe2, mulmod(
                add(0x240812f4a33947def0165d6a1c06d508, mulmod(
                add(0x3a6a7fec5920b840155db663b8b7112, mulmod(
                add(0x1fce584722eb872b5dd1fbf1f2bb4a2a, mulmod(
                add(0x2fe7c51df73e48f0f7207eb77d12e3be, mulmod(
                add(0x63f0284a1456aeb80042225395136e8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28b9216d5c43d16b8772f89ccb1fa6cc, mulmod(
                add(0x1d100692b3f830e40c3227d5dc2dce39, mulmod(
                add(0x1132202e026d8b2375c800307eb4c223, mulmod(
                add(0xda027cbb152f447fe1963e054435eb5, mulmod(
                add(0x46ea4c86c5466f95edb09bd748be932, mulmod(
                add(0x12c3bd09651912b009cd59efd8e49607, mulmod(
                add(0x116358870f1b5b54522195492f7980b1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a7f7636928c34e1f2aa6e5d7f401028, mulmod(
                add(0x1e8203d13f305268ada2030b001442c1, mulmod(
                add(0x1983d2a046b672444b2d849511b06a8, mulmod(
                add(0x1536a788f787d8baf0cb0a330c588b82, mulmod(
                add(0x18ef4ce593429ed5ec4b3439e1c78ab1, mulmod(
                add(0x2bb4b51ff18ab5743c9f945907b26932, mulmod(
                add(0x21ae8a7a8e15493be569780a3939f056, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x94e4a8104ad136e3c7a326e86b9d7d9, mulmod(
                add(0x1c4924c5317697b44536a6e98055a022, mulmod(
                add(0x8515d1afacac5eaa9f08c4709660ec6, mulmod(
                add(0x313fdd0bd4e66df3376c682edd91507, mulmod(
                add(0x149672f6e75c6b7f466ed2788b5d3387, mulmod(
                add(0x5061b24fec5175a3463275c99cd8eee, mulmod(
                add(0x2beadceb912ab684f1c4f07f011e12a7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f9d9bffcd7715438b30e1a265484726, mulmod(
                add(0x2839fcb57c1dfaf6fc6e275e970fa054, mulmod(
                add(0x29dd8e7a4501fe1e4538ed8b8f95c3b3, mulmod(
                add(0x6975656167c0dcb6510838e4915a97, mulmod(
                add(0x284387564f2d9387779f8676bc9ca852, mulmod(
                add(0xc6cd6778bb18802a0eaa7114e1fcf8f, mulmod(
                add(0x8418065efc92f8c13e5829d87e07f3d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1cde075d777061e7e20ee789358bfc1b, mulmod(
                add(0x218ff386987d56c2ddac8d723639e773, mulmod(
                add(0xa210d8ea2b87024c1a87be85835efb, mulmod(
                add(0x381f3d4ace2a43e20d1ef75e0467ad9, mulmod(
                add(0xa8c153ba7d5f44311163402f14c66b6, mulmod(
                add(0x25bc69aec4dbad375749089d934008ae, mulmod(
                add(0x12df3133074ab146c7ec4704cb9bba1b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc2be95f56b8ef4ac1ba6fbf415acd49, mulmod(
                add(0x50687df24ed28a055b6056c53fb76a2, mulmod(
                add(0x1815d55dd2942f10ed6e57037b7637ef, mulmod(
                add(0x2110d37a45b032b9cda6d445366319e3, mulmod(
                add(0x26efab0d993eefca9f861ceece027f23, mulmod(
                add(0xd1393dfb29841469bb144f41ceddd2d, mulmod(
                add(0x15c88e544479ff408ab0e6614da6e9ac, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x105082e179c15f1698b578c24da343f4, mulmod(
                add(0xf309a0c09b0a79a50906fd66d28c314, mulmod(
                add(0x4bd1dd6ddbd7cc920b38b1083e2e174, mulmod(
                add(0xcef712edc1bc0c74a9841beb520838e, mulmod(
                add(0x18ece6bd0267c3cd6660301a5bade824, mulmod(
                add(0x11905f3769ce9710d453e8c82cbb55c5, mulmod(
                add(0x1d9cc55ddec37975a8ea531abd7373e3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1c94a61059c22ef70db0b1190db966ec, mulmod(
                add(0x194e4d659f5c82fa63d2a5f47ad2c763, mulmod(
                add(0x179d27b507dcb9b3f83a7a340a861d10, mulmod(
                add(0x2bf98e7be322126ccd4ea44d88cc142, mulmod(
                add(0x1c28240ca5eaef8746855a07e1c745e6, mulmod(
                add(0x24434fe3363ef06c7230603371039d8f, mulmod(
                add(0x1ae7cfa8ece9a09eb9261dbd8f459e39, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa5a827a61d225b64ec738234ef8d873, mulmod(
                add(0x1d9af71fe90e6c4c9c662fc8384b9728, mulmod(
                add(0x21845348f035d64ca71ce3235c259a50, mulmod(
                add(0xdfb97b8f1953f8a9ba65ae6727de6ca, mulmod(
                add(0x4281f55c59be902b2e4623df27bf6a0, mulmod(
                add(0x4ddff226e770d0bc2e691c6402f8a5a, mulmod(
                add(0x264a8fb9038b4d361f62b7aeb718aaa1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a866eb6087ff3119e3c838e2cd0d526, mulmod(
                add(0x5c5eda9a5620900a1ce9a84faa4f42e, mulmod(
                add(0x15429c505169830a296a9eee830f8006, mulmod(
                add(0xc855cca0ec3435bc21fd2c2ef30ef78, mulmod(
                add(0x1b4760b18195234e2c34db0a057d8c9c, mulmod(
                add(0x27488e235429e1e1df8f5c2e62aa2828, mulmod(
                add(0x186fc38c934b9f74dc9593aa8dfffcd5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22b83c43b964457467523488702179b, mulmod(
                add(0x5363d7e32b55ce62dc2baf93a5283d4, mulmod(
                add(0x1b28abf5690cadc9d44a13e5280653b2, mulmod(
                add(0x5732c87f1b463278fb3736c4a2de0d9, mulmod(
                add(0xdaa6874dded15a455923806864c734, mulmod(
                add(0x2c93c8a6cb893822bd25bff680d96318, mulmod(
                add(0x1ef07f101d0a8419ae444e36d307d5c0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24d46f117be6f8bf4bb504218810b4fa, mulmod(
                add(0x17daa18250aacdc39c248711b2d7a69b, mulmod(
                add(0x14623d4434aacf09f2a4282a6c7ea769, mulmod(
                add(0x2c92130d505915af763b597950309190, mulmod(
                add(0x2edc3b0f686f238ee1677820b360b827, mulmod(
                add(0x183c39b5dab59b5e489308d9827f1db6, mulmod(
                add(0x237eb21fb87ddbe12b746c6697477c3f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd12d79a6b846247c83fd160bc574243, mulmod(
                add(0x2bee43cc29c773127ff7c42743657f6f, mulmod(
                add(0x72c18e05a6d47770655480ebab34a5c, mulmod(
                add(0x1081283650044487c8a9db9f7a749d55, mulmod(
                add(0x1339c35c1d703e1f30a843bd2c82bf00, mulmod(
                add(0x17996e3ffaf1693e900b37021b05f2dc, mulmod(
                add(0x2b3edb9a19591c8d5c83d3a2298204d7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11f4d6c3a681a492933d19636a638fdf, mulmod(
                add(0x1a6168a49fe876bac2e9a7a4416fc45a, mulmod(
                add(0x10a670cb1780f64eb2e4acafd469d2b9, mulmod(
                add(0x1d1a34b2727a82a43de507ea15425d89, mulmod(
                add(0x13c9d0ca690e78f9352a6460cf02c2fb, mulmod(
                add(0x12661931e423b98c04a37dd1bfc090ff, mulmod(
                add(0x24b9266443edbd5cc7e214aa9f0ef3a6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f37c8bf4d8d5b023f130ceda51db9f1, mulmod(
                add(0xde7c29f2979ffaa06c9f3164807ad4d, mulmod(
                add(0x8db7578047f3fa92d87ab2cb2bb8b10, mulmod(
                add(0x2776bd3c5fe5538a5ae61ea901ebe908, mulmod(
                add(0x221165083dcc6e1b406553ae361ee490, mulmod(
                add(0xef6a93868f9d5c25f82b3e321de37bd, mulmod(
                add(0x235aa828ab87b9b7ca2b7530dd7edba6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e5878a2704b97fafc52d7255cd9900b, mulmod(
                add(0x2e73fda1cce38456d26242b562f590a7, mulmod(
                add(0xcae12ab681d8fed68a411843e71ae88, mulmod(
                add(0xbc1bd200b0323bb7e2b44fbb0ae1903, mulmod(
                add(0xfc7c8af11747e415fdfd79edf48f11a, mulmod(
                add(0x2007458418b903793bbb088b1e7b2caf, mulmod(
                add(0x21afa8780aba68a462e294bd9c4abf3c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23110b1914ca4710a46dae5892e6b300, mulmod(
                add(0x10dbe18ed92e1a0cc6f96ae1240538ad, mulmod(
                add(0x130ff46d77505c56e4fa7ed6d6e379db, mulmod(
                add(0x2f9f8e9a3e1bb7f56749009278af99a1, mulmod(
                add(0x1561113dab4f316d0c4b620b5632ea63, mulmod(
                add(0x1638ecd11255346039d3bb1c1f31b765, mulmod(
                add(0x4c67051e2df3177160ee4dc3164a86d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27a24cb130a7d126d4f2703f9310436c, mulmod(
                add(0xa3c38570d38249c61a173d31d5b2d2c, mulmod(
                add(0x10286a6d34aa9f3a36031d719fde4e2e, mulmod(
                add(0x160984a6fe6df30ab0ef19cf4cd8cd79, mulmod(
                add(0x1cf7231b6b6296fabae068eb77da3410, mulmod(
                add(0x192bb67b976b03a4abd6c6ca6576fe2e, mulmod(
                add(0x31ff564e7cab1d206a6778910fc41dd, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x81e3f11318151e778c2401dfac6a961, mulmod(
                add(0x1742155d7c724c388a724d24f4cab193, mulmod(
                add(0x4ea7939e2398fabf41326df37d62698, mulmod(
                add(0x1bd4f7167d514351594b342b982681dd, mulmod(
                add(0x1ce2531cfc2b6477988449e67d01a53e, mulmod(
                add(0x12dee3dc51780da430691e8248c30440, mulmod(
                add(0x13a3b0e00aaa0aa2fa0d3eb5d2d719d2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdb5a200522460b38641805e70614c47, mulmod(
                add(0x1a883dc6e40dee692a519beb3b923289, mulmod(
                add(0xa2319601e20623227f483e3cb814997, mulmod(
                add(0x855ed28c09863cfe42a28afc8b2abed, mulmod(
                add(0x20da7ff3bb16d5c1aa804f257d33438b, mulmod(
                add(0x90f8a6c4a6aaa082bab6af7ecf4f4cb, mulmod(
                add(0x1e2d15c64c98f1201dcfc70e1a74fe88, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x14cfcae3752ea5cd02941f2e1031fab4, mulmod(
                add(0x29247cfd74ed60206341443baff4a1a6, mulmod(
                add(0xf8877ea767ea2b9dddecccdfbf7c4af, mulmod(
                add(0xcdedc46acfe053d226221e7f44c81bf, mulmod(
                add(0x18acfee342b8fd3f466683727df812cd, mulmod(
                add(0x31dc4fe40e0b0c00166bd9a59e90c5d, mulmod(
                add(0x3aa87e2d63a669458ae8e2c56faac85, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x20f3422f80d12b920efa3f8c4d8c9523, mulmod(
                add(0x2d79c50a3720d6b74dbf60dbee780c27, mulmod(
                add(0x2f24ad3cb41293466ee0ca5234abacab, mulmod(
                add(0x19b31a4cad9b4b7021ea40882ff7d0d1, mulmod(
                add(0x10603c9403859c5bee33e02904abd38e, mulmod(
                add(0x235d4fce0806c51bd0ac5366abf38330, mulmod(
                add(0x2a7191619963a36ba5c2fa53d88dac2c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2199d2d64bfcffaabd9fa3d9dcab37ee, mulmod(
                add(0x20c85ee37b98d0fde4d71878cde71ae3, mulmod(
                add(0x217c93cc5f08075a1d29a0dce641fc80, mulmod(
                add(0xba6b870ad23ff1b4f975a09c67cad89, mulmod(
                add(0x2f9c623e467a4ec7dfaab21f41512108, mulmod(
                add(0x99f707c3205f4820b32a19cdd001728, mulmod(
                add(0xb1c205071b797cf74bbb15c1c3c34ea, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd2aa4c4cf332f769110f2b9215b8d6d, mulmod(
                add(0x132bbd037624b84ec8849b32ccf73323, mulmod(
                add(0x2713c33ca820e3aa313e4775ba5b207b, mulmod(
                add(0xd471418eeda64d34db72c8465fefab6, mulmod(
                add(0xf1f1cc828f7b44ff83a430580503cc5, mulmod(
                add(0x24b62853f11e894b2c6cfd13b5f72ff9, mulmod(
                add(0x2ec51042eedbbac1af7cfc04ff161190, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x239025a161548b0a1b7aa3fbc9b8b49d, mulmod(
                add(0x10c3f5f5a2d4079ee8b4c9036a0f26a8, mulmod(
                add(0x838748f3410a98b775783c090ac06, mulmod(
                add(0x27c1f7bde9cb3cf11aec2ebc78ce6e26, mulmod(
                add(0x2922fb0f8e2ee5a6d35202442dd11570, mulmod(
                add(0x2e91f843fa43129ebdc80f2c925ad67d, mulmod(
                add(0x24438264b53a2d9aac8f1e3ee1fd7a64, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28c7b03cdd39f913436a613f471c5249, mulmod(
                add(0x19fa7191e1e5ba7849b63f165218116f, mulmod(
                add(0x2749bb613e79a196e4ada887d8aa1b90, mulmod(
                add(0x2d9550fab235be0bd2d0ef95835de5a5, mulmod(
                add(0x859ea3dc03aa613fd5d0873fe3ae24, mulmod(
                add(0x11f3c9261c1da3bee02ea2d2cf1afde0, mulmod(
                add(0x252ec9eeb115c049bc0e46c253670c39, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11de5b7ef7339ef0498192d868e925cf, mulmod(
                add(0x19d5ca2582ee6b338c1aa5c00c894eb1, mulmod(
                add(0x1874cbfcbff0ecd0bf6f945e27ad307, mulmod(
                add(0x1b3c36efa0ae58a34a0b44dcd0d5013, mulmod(
                add(0x1ed5efd0a18106a6dfd5a73556226f2, mulmod(
                add(0x2a4e53f294c3373d972e165693145513, mulmod(
                add(0x2cb57ffa17b68cbcc95b80d0ad2c5f63, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x36c5ae64d9a68a6add34c6311e0468, mulmod(
                add(0x18014fb3f63144af4acb38e98ee8c7e9, mulmod(
                add(0xe8222e09b7481552865f0712dd9b69b, mulmod(
                add(0x12121c45053fdf623b9f52eba2595c3d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
