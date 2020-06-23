pragma solidity ^0.5.2;

contract MimcConstants4_0 {
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
                add(0x1f255f222d29b5f289e5c25477128f71, mulmod(
                add(0x873d6de713b534cde59c82093bc44c7, mulmod(
                add(0x185c4c7b56490594cf8ec8c338b79d5e, mulmod(
                add(0x2580e983b4a464472eb02736bebaed7d, mulmod(
                add(0x1aa672ac5bb5f784172cbeb9faecb17d, mulmod(
                add(0x1163f246a4272e96f72a10509aea3674, mulmod(
                add(0x178f1cd5f58397d9115f7e9d3761eba, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2427412feb1fd29ce61f63ef19936502, mulmod(
                add(0x2e343fa8239f6dd1b9b9bc1a9c1d0521, mulmod(
                add(0x77e1c2f731ce75cade62cdad9163056, mulmod(
                add(0xdb043541d2ea95868d76fe6afbfc400, mulmod(
                add(0x28beb863fa9703a0e6b0ca70654feb7d, mulmod(
                add(0x10a1424364d99c50401f7fecf1df7f7c, mulmod(
                add(0x48ffac7a0303e20fdb2b6614b3a6c61, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x226df55540596746cc60ade3398c3430, mulmod(
                add(0x4d24f38dd2adf5ddf76bcb5ed6fd0b1, mulmod(
                add(0x2eb0db2d310ef37a10202bb9d66e9a75, mulmod(
                add(0x26922107c207dec754c5309edfa65638, mulmod(
                add(0x1a6b91f5fb0ca77ba5250c80f3f8842b, mulmod(
                add(0x1a392a9b0fdd8af06a905b0ee88a6536, mulmod(
                add(0x1ba275ce0507753905b2b42bd30c4251, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24c5eb717a35a0464201dc11621e5c11, mulmod(
                add(0x895105f39ab2aaf3424432acc7d779b, mulmod(
                add(0x2934b61e71493632d3b4e3bf87e94029, mulmod(
                add(0x1d6053c8e731d67fb39177ee051a5aff, mulmod(
                add(0x212088f8daba68305065bb6513c45ee8, mulmod(
                add(0xb994d17d648210a45944d0f21a7db56, mulmod(
                add(0x1ba1ad8c55e771cfc91eac4523855b56, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23b2a648d37156945e05dcf39f71ab2, mulmod(
                add(0x11c836b7d5f42c110af1c64f91cc85e5, mulmod(
                add(0x20dda8d949b1ead76be012c3872f9709, mulmod(
                add(0x1f4f1cdbf2c6f2e2b22f08cdae7a5672, mulmod(
                add(0x1919dec5b494a5863ae35b2ba55316bf, mulmod(
                add(0x1dc9b3039970a5252763d81eaa18ffca, mulmod(
                add(0x1714fc16dc152a3888c092ea0d76b766, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x149decb5c64c8acff06b6e0398222ad9, mulmod(
                add(0x2d569d09e5ce4330ba9e739ef300f241, mulmod(
                add(0xed9c1abeee7c3a8a9af2ccf643295de, mulmod(
                add(0x16b1ce459c57b0679d911d05647b2c7e, mulmod(
                add(0x12a161ed0e1463bc7481e2eccf710e30, mulmod(
                add(0x114ee9fe3064283bf12a3d6fe37bb25, mulmod(
                add(0x137b2a559d7d76fa3ee604ef8236d6c8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3e042229bd9b1cbb887a31e8f412d9f, mulmod(
                add(0xbdd0ed048dce1c1fc9a1b2eccaf8ce2, mulmod(
                add(0xbca223a057e6e1103b8bb746bf59aee, mulmod(
                add(0x401ccf880fd3887231cc32c477898d7, mulmod(
                add(0xe4f07d7bcc969ec813024108ee9a6b6, mulmod(
                add(0xa1597b8c3348eeda22fb6fb328ed9d5, mulmod(
                add(0x1530f7772df0e06d6527177d00c28788, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2643cbed480902683acaa2b74332e2e9, mulmod(
                add(0xe1e8cc1142ea70ed1e1ff7a7cdc32b3, mulmod(
                add(0x13efa018b7aa2a88529a89d0dc032fa6, mulmod(
                add(0x13a3cefbcb511929c15a3d643f6e5e7f, mulmod(
                add(0x21acf37ec886177280e89e4d106268ea, mulmod(
                add(0x881da5c1d93b111c671b3f255ea1c02, mulmod(
                add(0x129fd23c535d3ff0ec55c33720999966, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x211f84230cd1509528bf007799bd46a9, mulmod(
                add(0xfd6714cedc0aa5117776f580124ff8a, mulmod(
                add(0xd4cf881dec0c3918008d06c59fb53fd, mulmod(
                add(0x18aea6015fe3466114e821c16babb017, mulmod(
                add(0x1f610e363dd8ad56c950dd48ef1fe9e6, mulmod(
                add(0x250a74eb9a4e49fd8a787d475a66560f, mulmod(
                add(0x2b7b3120111f30e5a90917ff08ab72be, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x25bd2b4354ba1a51051723cd2847a59d, mulmod(
                add(0x15675237c75fcfcac3166cf45d5d0b54, mulmod(
                add(0x29d3a50196ddcff3fc704fa59ce2dbca, mulmod(
                add(0xd0f879074cad23b6c5f6fb7ccb2b07e, mulmod(
                add(0xe37ea27bbeaa19d9ee9a6ae07bbdc6d, mulmod(
                add(0x17437c54622e4581762e463059245e4c, mulmod(
                add(0x1d2493f47d8bf36cd9c4cdf9de8e168c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5a20682498d193d16ac7a593d068eb5, mulmod(
                add(0x1d1a5890175f7cd9cbf5ca223f464625, mulmod(
                add(0x9fa2c3ae03216a5c480af06a3135983, mulmod(
                add(0x2024db34ad3a63653eebc921b548131e, mulmod(
                add(0x1c33f8cf89912547374fdac06f5c1446, mulmod(
                add(0x2cd21f6b7385ee883d7abced1d291832, mulmod(
                add(0xec2b30bc1b627201cbb07161a16141b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27a5eeeb3b245cb7ab6aeec03627816d, mulmod(
                add(0x3165efa5244fb5266d6e9b127e0556a, mulmod(
                add(0x1ba3117632bba0e9345620bd6678149e, mulmod(
                add(0x1903b74417d255c817b4c982dcb4475, mulmod(
                add(0x232d5de04fde8be5f55111e21ed50d97, mulmod(
                add(0x1027dcb9b386d68bf6bba32f120e6d80, mulmod(
                add(0x2e9886d6eae3b71d662c09d197647e0a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2544c98ba7950618a6d6509bac43e105, mulmod(
                add(0x35a88562709c22902c5819f7a7f1e32, mulmod(
                add(0xe79aec85593e729605d51344ee11752, mulmod(
                add(0xfda562ebb478a0dc6568623fa5b6801, mulmod(
                add(0xb1f3a8efb7900dfc70be248a9fd45cf, mulmod(
                add(0xe274b420f75081e8451baa9cc9af84d, mulmod(
                add(0x11e192abfba2b099f78d9d974d1d18ab, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24515c5706d47d1b53c4402c7920096b, mulmod(
                add(0x1a2553b28cfdaf0bbce7582fc69a349f, mulmod(
                add(0x2e70195d2b965301065d53dfdf6ff5c3, mulmod(
                add(0x25df7850ff41330caa5112edb1e294f2, mulmod(
                add(0x224d0294ba76de6e47f12c452aab7216, mulmod(
                add(0xe0a71bdf084de8d0c22916504745a3c, mulmod(
                add(0x2abf6886ff36968703b6131b13daec44, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x42a7466bc581601ec26e660f8443d67, mulmod(
                add(0x14d43afeb2a368adf9892448727f7728, mulmod(
                add(0x22915bfe2ac8b9504430039a5da518ef, mulmod(
                add(0x1d6c5385962f5feaf3bfc7e01d57b543, mulmod(
                add(0x183115212d4b267f2e681f819f3c41ef, mulmod(
                add(0x2e4c9f03946ede2e8040f4c2b158e25d, mulmod(
                add(0x622b9d6bacce435dc57eee63a2c330f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x26fe517e1ed57f644593e5a6d44f6ed8, mulmod(
                add(0x223341a4fd8400c36030f98bf1b59a4a, mulmod(
                add(0x3fe6f6a21625a503e6ba56307927c8, mulmod(
                add(0x25597ff4bfec4dcd55c2c1bfc7d7c429, mulmod(
                add(0x1d553429d20f9ceb4da64d65a293e15, mulmod(
                add(0x2d0d8ef7c32517d916c0fbe5f6a33899, mulmod(
                add(0x89998e73acb03ab3327539abde16c9e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1893c14ff90aa2bbb34b1e19cd1e56dc, mulmod(
                add(0x996584c7d0a5ce4fda22d933b437d03, mulmod(
                add(0x1004a739ac209046f5670935cb79187a, mulmod(
                add(0xcf5e160e2eba2f79cc3fff3966debb7, mulmod(
                add(0x423691dc0db9718bed3040f4f2fc001, mulmod(
                add(0xd3545c6d8111e7fc1efac1e8ee0e9a9, mulmod(
                add(0x82cb1113022d58637c6756e0ba1ce2d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19c394274183f4f579d4c7e94a8e4741, mulmod(
                add(0x26b87110c8c557c6f7d258693c55d5e3, mulmod(
                add(0x158d1ca7e0be100cbf8fa684c3ac3723, mulmod(
                add(0xa60c1ae641b38bf367873335d7a3761, mulmod(
                add(0x3b09a0a9006f65f58d72b630b41d542, mulmod(
                add(0x135b62771d6939b935631be5e1f3ca6a, mulmod(
                add(0x210bf21d74a5ea07cbab3d006826caf6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x160d7db34dcccc5f36385e921de043e4, mulmod(
                add(0x14fae351d37b7289ec7be8804a3fff8a, mulmod(
                add(0x25e997de7f59f0c484942b1272787a19, mulmod(
                add(0x567f7e23da12e99920f330b27ee7e7d, mulmod(
                add(0x6102ba4cefbfef259cf9b74c4cbfc4e, mulmod(
                add(0x1efb0f3ede710f8b258a44e1207411c0, mulmod(
                add(0x290e1d88f2722c5ffdefbde1f66dafd8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x495df9aa0f0457a8ced2d3886130ffc, mulmod(
                add(0x1370c5c9620093a3455990688d59afa9, mulmod(
                add(0x1b9084e150688823ad8a5a0e8ad193c9, mulmod(
                add(0x1bc1d15b14a9531d93a365bdc2fcf35c, mulmod(
                add(0x1030bd880b910ec02801d34a537af95d, mulmod(
                add(0x1acdb6cca577b7f3df2eb1494c31b92e, mulmod(
                add(0x2bf6fb35bb02802656b4d4bd4097b6a1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xec1090d2e82346372730e80cf10cc6c, mulmod(
                add(0x8c0b52c218df36b886692c39aa78843, mulmod(
                add(0x18594a0ee3ae642884bdd5cb06bc6a65, mulmod(
                add(0xe45dbdd0a505c683155412cc2b4bdb8, mulmod(
                add(0x20e778242fda10909bbfb72f114d13bb, mulmod(
                add(0x2ba410202a4188dec4e9abcc7c0c05cf, mulmod(
                add(0xfda8475705c059ad882f8140ba8f116, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ee8d9610687d51ad8dbf216c4605c2d, mulmod(
                add(0x1322a7c902f1377430a04aec40d1b60f, mulmod(
                add(0x2bb5eba2ad9b35051e5a425ee200789b, mulmod(
                add(0xf9b8d6fc3968822c2111f493e5b7ff5, mulmod(
                add(0x2d2b4f85fa0726c577b3942fb700f9bf, mulmod(
                add(0x9756d56aecdd033c041b84809f84bae, mulmod(
                add(0x2aa4f8dba4bf3b81ab018f2c0b3e4f33, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2d2da34e1086c212f539a6a4633a27ca, mulmod(
                add(0x1fe728d1662ed46dad7ac82c35c8a36b, mulmod(
                add(0x12361e930b0a3b5b2da3d86cc2ee6656, mulmod(
                add(0x241959c72cc4170dec7c443170dad58d, mulmod(
                add(0x19a60966a39ffbb988f8c6e95f7f17cc, mulmod(
                add(0x6ce4b91f6191ce3e01bfb58a107c1ad, mulmod(
                add(0x20cf1a1fee16b79f23748ba293186c6a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x26cbae7dfa9ff5b5d6b3821269d86a71, mulmod(
                add(0x74af3660f3da689d5e4b4d543484e17, mulmod(
                add(0x1be0512be6407ab50d3e3ec1cd950e37, mulmod(
                add(0x5f23c865a3421bdfa12c3256b78071, mulmod(
                add(0x1b8547e3d8f562e6d2fa19af2d8698dd, mulmod(
                add(0x153ffb26ff5cfd8b8aff84fe40f634ab, mulmod(
                add(0x190666cbc7e93a230401fa025c8eb319, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x179d313f0edcd2f5b179defc63e98e9, mulmod(
                add(0x13e091b4a15b177ec6fb1228a0288a08, mulmod(
                add(0x161f6df48167778ede024c7c465d129, mulmod(
                add(0x2130b6a50df683e2a5fe5df371e4371e, mulmod(
                add(0x2c97982fa79ac9bc6a33cb23cf46fc8a, mulmod(
                add(0x14f2f2527e46697b358959a7ea2e461e, mulmod(
                add(0x28f415c4dd3ffee436d5a92d0c2697c5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1804aa6ef2f08e8e3675b0ac863a183d, mulmod(
                add(0x18cf7e5b3c9df354b6b8a406681daa81, mulmod(
                add(0x195e8c4153c5ce8fcb015b0bce1666ba, mulmod(
                add(0x120f4e9dfc45d0b0d295bdcecad34399, mulmod(
                add(0x2b525c9e676af44dde5964ed116002a0, mulmod(
                add(0xd7428c2ae34f1102ca51044cec0baa0, mulmod(
                add(0x12e47826ffeacab5ebe15d90e09fe6f5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2404fec64a7b32976e6b55b040117d71, mulmod(
                add(0x1130e7b148acc31a5e92d0ee95702116, mulmod(
                add(0x2d29baf63102a1b6d2de8ddd02280b87, mulmod(
                add(0x23316eff471c576208f6f9bd16f21c07, mulmod(
                add(0x1301d9a6b1b6d0123831d7197b859ae5, mulmod(
                add(0xc3ff86520a27b8482494efb11ab0cae, mulmod(
                add(0x991279b8b555c39472758c70d00f2e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2edbee8977c1b833a49de64ac614a9ab, mulmod(
                add(0x79ee40a0230c8bca6935ab31ef17426, mulmod(
                add(0x178bb956fe8549c8978851d957f470af, mulmod(
                add(0x715f46c51ef308c093bb0ef59001d95, mulmod(
                add(0x194ed33110974ea79290a040c3e8d7eb, mulmod(
                add(0xd59407e3809dd5b2fe9df68376992be, mulmod(
                add(0x2dd1f195fe6cf63261d67f4b433fa6b2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x290dd8e80b61b22db14cfa1c29b4e1d9, mulmod(
                add(0x11d8ff63b241ef45e70b27a088132877, mulmod(
                add(0x276cfaea571e2b495d2588342efe52b6, mulmod(
                add(0x2aa08221c3eeef453f046a829a067446, mulmod(
                add(0x195b34a8c525a4c330050842a1652bfe, mulmod(
                add(0x20fbb37ec68d7377fc3ac360ffdc3934, mulmod(
                add(0x3069cad30f33035f4fdc6c3364fa5e7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x140f798e289527c41bcfac5cec5d90e, mulmod(
                add(0xf119849958a43e4d82caf0238b4904c, mulmod(
                add(0xc8ba20d239cee1bdf1cd778f6216b31, mulmod(
                add(0x10032af1c9d4537a21a14d8ebd4938f2, mulmod(
                add(0x2d3182e9306c9a9b32f0568be271df88, mulmod(
                add(0x1bc7e2e8deb7fe0759e572c894a0cee9, mulmod(
                add(0x1828135ab67424fa0a4b72b89f946025, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18317793dc100767060b24de42ecc8db, mulmod(
                add(0x21cf985ec0309eac85e3b02150243f51, mulmod(
                add(0x1f4c59e7b87c6988706cfd666557d0c1, mulmod(
                add(0x22c8357e02a045862d655335e30c8f13, mulmod(
                add(0x296b4ca41ce3b2b86ddc7c768e12b827, mulmod(
                add(0x1684a600414a51802414e15b06f0fe3b, mulmod(
                add(0xa2126f4d7607d2351aff418c3e479cf, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2d290f46bf98206fcd73e8cc01c1ebcd, mulmod(
                add(0x20a9b1f70cf635993e508237855c7e42, mulmod(
                add(0x20d5524f986005e7a8b3eac664fc2389, mulmod(
                add(0x2a01e217f4b4da9e935b986659b7abc3, mulmod(
                add(0x10babbf9d76e8b83700e86729d405c89, mulmod(
                add(0x18efb437cdb853c0dcd1d702f2943d9e, mulmod(
                add(0x10e42fd6db76fcf10daf583a81ec1eca, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4054f0f1b0160a634d0cbcdbd95b199, mulmod(
                add(0x77bfcae9267b14f005ffc70df1fd790, mulmod(
                add(0x203561fb77ddfdc4f6794018081f9cca, mulmod(
                add(0x22b8d5c8027a30280c0841649061ee08, mulmod(
                add(0x2b2f95bd12e94c54e4fa8a18698000e0, mulmod(
                add(0x9bd228e79562627a39db96272c0930, mulmod(
                add(0x14bc46005ba587d8551fbc1d05eb1934, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf508cb0e77a21ed98f533f1536e3814, mulmod(
                add(0x2357406aefc9443044c00d65c0d40373, mulmod(
                add(0x24a7bdef6fdc8c3ab1b2943ec544f6c8, mulmod(
                add(0x28957f26ce903a3cab81cfb8d06694e8, mulmod(
                add(0x802b5a98f9f50f3f5a0464317241ec2, mulmod(
                add(0x1e29bcfb632996c539a88262f369571, mulmod(
                add(0x270acfa7aa9561b70ecef2ccb7bdfa88, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x21cfe870518eefd02b2bf8f2d121060f, mulmod(
                add(0x16d6c19fce2546aa66d6447fa9950071, mulmod(
                add(0x14cf27250a5b98a6373eb5fe66c0a004, mulmod(
                add(0x23bef5704497bc2aa5b91136b6b36f90, mulmod(
                add(0x2466e625c0a290dbab6ee6faef1c5e0e, mulmod(
                add(0x21665a30f7fcf9980500062bd7581e0e, mulmod(
                add(0x990b022ef3786083bd812c3f1c4ea82, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2bdf6ba4599541d4902ca01cad6377a5, mulmod(
                add(0x499fd44789e7656c4b9e2982c2ea30e, mulmod(
                add(0x252f8308e9cc19cd92746d0e68515f12, mulmod(
                add(0x18b0ea99213fb719fa4402a1f61a18c0, mulmod(
                add(0x15876ecf1d0d69de515e0075a49361ed, mulmod(
                add(0x20ec5a9e997311063c73125a85494286, mulmod(
                add(0x1992ff1e465de4931cc6c00e13bdbd7a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1274feb7ec549c19a8ad75f68ced76a, mulmod(
                add(0x1cdc25bc9a573990e325a6f1206ba8ce, mulmod(
                add(0x97930bcdb3c60761f7730c388acec39, mulmod(
                add(0x1dc78c5dec848bc7db08885be7cb341c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
