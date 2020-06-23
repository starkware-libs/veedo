pragma solidity ^0.5.2;

contract MimcConstants0_0 {
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
                add(0x15617ef3ff19101cafe3617c8d67a81a, mulmod(
                add(0x19beb73a1eb4198e9565ecdca2d51944, mulmod(
                add(0x2fc327d0a2a8d0afbee873474142e693, mulmod(
                add(0x132a3991f384e4ebd15e033ef22007e6, mulmod(
                add(0xeca29c3b939becf9967fa513c28f94c, mulmod(
                add(0x5406512838f3b15bd23a40d895b8119, mulmod(
                add(0xb47755e5fb47380575bdcd5b2ae0741, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x21542c415b4e906d30f97fe412b7a810, mulmod(
                add(0x176024557ebfebefd928470713cb84b1, mulmod(
                add(0x33f4534ffb5fb9196d07648acf14247, mulmod(
                add(0x5eceef45bb16f809e45c6f013d1b808, mulmod(
                add(0x50dfc8e64682d4c53bafc332b1a8637, mulmod(
                add(0x248e51583f0370737d472da7cb0b9043, mulmod(
                add(0x1147679d5dc9b0a65c0e8f428166b260, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x96426eddbfdb3f2b62dc59699c07ed, mulmod(
                add(0x1498933d37f1cefb6f3ea68f511a2215, mulmod(
                add(0x2e1f89dffc76a83e0cde859d94dd524c, mulmod(
                add(0x1dd0238c89368a2def33d283ad493a78, mulmod(
                add(0x2937e8ec60807421033d4a2aeb128a8c, mulmod(
                add(0x41620409cceb4611b6526c22a26975e, mulmod(
                add(0x26f759fe04bba90ba43b9d2a6c27020a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb897b6a9c473ac9939c92542f919822, mulmod(
                add(0x1dae8b65f84c39eb4ea950559db9788d, mulmod(
                add(0x2848161325a5f38533ee47e371b025ce, mulmod(
                add(0x1378925e9ec23bfe32c53552b7fab0a5, mulmod(
                add(0x1a3f279419362c2567306af75fa06ce4, mulmod(
                add(0x231afdaf7c31f816189392b92de2d939, mulmod(
                add(0x2fee4d0f9c5c38b5989cff46f621ad51, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15653235da26473202fbe719083a179b, mulmod(
                add(0x1773cb3faee671c0679694d9b2c0ed21, mulmod(
                add(0x224a9b8a9b859b13f80788499899a443, mulmod(
                add(0x12ab783dc1ea071311e4ad9a7498ea6, mulmod(
                add(0xd739c6eeed69addecc3487682f528bc, mulmod(
                add(0x21754faca829ae3ec09dcfc8ca1b9dc2, mulmod(
                add(0x178763780907a03a33ed48e42598546c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x209b3161f6323487ad33a2c711cf637b, mulmod(
                add(0x3d4e144188bf6fc47c1b2b7c6a369, mulmod(
                add(0x284d8dd2e0ae95eadf1f7e2fdef2dfc6, mulmod(
                add(0x2557614134b999d966a3e2ea88abd60e, mulmod(
                add(0x239fc4ee456ad1375fc053825e80039, mulmod(
                add(0x2ad335356a8b2cea941115f64460841f, mulmod(
                add(0x14dd3efc0dee41b0265d978b4c4c5719, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a5461d5b51588a7cea089218d989355, mulmod(
                add(0x24aac2b4f93586934df65d2665406bae, mulmod(
                add(0x140f8f1dd3c5b015a41484f6c76e98f7, mulmod(
                add(0x207d17199fba6c966b2faa08dfe58745, mulmod(
                add(0x4f26954daa0dfcf1490326d0a099487, mulmod(
                add(0x2d41a91d9f909e949f326df8630fb84e, mulmod(
                add(0x1a24e9a23ad9927b32e0b33b506b3ebc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ac3b68b68135fb9f4f7be467afe36e, mulmod(
                add(0x1ecf6de3aeebb5b8378c4b99756b0bff, mulmod(
                add(0x171afdd9e9df601efc5c60ce2949b04f, mulmod(
                add(0x2a09d1767cbde2853259426eae159671, mulmod(
                add(0x149d3993475766e40775dca75848edea, mulmod(
                add(0x1f69a4da835be82f694682a7d740be26, mulmod(
                add(0xed9c494e4094956c8bac7960984a355, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f6a105ac94e73e55c9399f8ac330fc0, mulmod(
                add(0x129ae8468db87d3c728bfe6f86ed2d60, mulmod(
                add(0x1020c1e32a7c727797afc8a1b451d63d, mulmod(
                add(0x1adba3b4ce36df5ffb4d25146ca8da19, mulmod(
                add(0x2de1cb622b91d14044e758aebf5e61f6, mulmod(
                add(0x4595b34950f780186592d495a510428, mulmod(
                add(0x2e28b201fea3501d55ad9ecc3729ca22, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xedbf6ac507f4309476e84ceecbab005, mulmod(
                add(0x76e4c69acf9abb70a6d88488ff77b42, mulmod(
                add(0x2c2f166bfe826c4b78ea1010b5b335f3, mulmod(
                add(0x162f3d730b1990f6504a0e00990f32b8, mulmod(
                add(0x2f707a53ef7c589f37b347b6a36ec1aa, mulmod(
                add(0x17a89fde6782f3a139a9f5c43dae9252, mulmod(
                add(0x6b2e77d46f046a92541ec633b26b672, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x3d7f294ef23b09476ffa9be31fcf0cb, mulmod(
                add(0x11ed135d178a782c38fdf02ce6a6bbb6, mulmod(
                add(0x27b00d515ed8070a5a1bbbad7b3e1785, mulmod(
                add(0x12f36d5ce2a35aa2811d5179a27d8d77, mulmod(
                add(0x1af809afbc5463563a7f0976ab272e47, mulmod(
                add(0x625a5bcc804562c18c45da3ceda2ee3, mulmod(
                add(0x6baf347ece468ad079155dba28b8842, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2bf4b19f53bafdd535126f9c6182f9d3, mulmod(
                add(0x9cb4d31093cbd7ef1524cd38bbed77f, mulmod(
                add(0x4d5e993bcfa4dfed0d2b260a923274, mulmod(
                add(0x11ea1cbf9bbfd2dfadf73622e9637a01, mulmod(
                add(0x2a51f0c902a3ab0f3409fe4a48f47e7f, mulmod(
                add(0xb77ef09b21475a804d9483d570a0955, mulmod(
                add(0x19dee754226f3a4d0338de5937f925cc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c24ad3a88ec654edb75674b1d64f614, mulmod(
                add(0xd62fb65d5bdb2965d8493d3efa5accd, mulmod(
                add(0x7dd80808dee606edae6dee20685d608, mulmod(
                add(0x6c73f90555fe835592e21760a820aa0, mulmod(
                add(0xd8dbfd02f9b51ad29c366392d1e067d, mulmod(
                add(0x23712b116d11f0087920d50062aa8fba, mulmod(
                add(0x296d41533d6834b761db07baf57a5c36, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b06efa23ba29f578d44aa9007b51a32, mulmod(
                add(0x264438ef8d6f9c8ebf416dd7d35b043, mulmod(
                add(0x210517a35b506cc6f2f6a897c7a1e0b5, mulmod(
                add(0x1a470a0df63f7c58c20a4f276a4944f5, mulmod(
                add(0x182ce5fb4b85dafe6de57818ed59bf60, mulmod(
                add(0x12931f41f01c97f35d2fcddaeea18135, mulmod(
                add(0x2488b908f7810d2a8d208bcc2caea000, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29ad8f440b049a8e88c53b67acfd1313, mulmod(
                add(0x81612a10e875ba23b2d5f735b173565, mulmod(
                add(0x2a9c1f427510371f27bf98b1e8e546cc, mulmod(
                add(0x765c5d367a12cce43e578a81db355e4, mulmod(
                add(0x22e9dc2e495568098f02993049e744e3, mulmod(
                add(0x13a880dbe83aae22a3ad44068e89e7a4, mulmod(
                add(0xfccd8268d20c40c5fbe7a2aedbd722d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ea27713b08de01cfa4f24f12600587, mulmod(
                add(0x64d74b36585b61b396482775facc798, mulmod(
                add(0x296f93bf1b9892d374ae6fa790b76220, mulmod(
                add(0x230a36ba2a4e62efed68838487bcc38, mulmod(
                add(0x18c77de4e3e098a2cd772511ddca95df, mulmod(
                add(0x1296373cc45ad221d0204dbb8d3dc98c, mulmod(
                add(0x11976ae0e5bb33b780f8d88ceab5d058, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x25931dc65e3b468c1f7dcbaf105949e1, mulmod(
                add(0x1e187dca9a82e8fdc200cea7ef87c9b, mulmod(
                add(0x130297435f53557c822b2b7ac0c9f295, mulmod(
                add(0xcbde4dfab0cc01ee910027fe0c8f6f7, mulmod(
                add(0x11e538a13b946548ea0e4344b8f5686f, mulmod(
                add(0x174065d3562704e24ae0ef46a009abe4, mulmod(
                add(0x1eb969e6f65d82097341bce25f51d066, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1127189d4a005f146ba5d80929df2661, mulmod(
                add(0x25fbfa6c5c9b2f072dc3066307bbff0e, mulmod(
                add(0x1cfabe6be63f339550dc60b3f375ae38, mulmod(
                add(0x21fe03ecb293d43d811bd92c0d20588b, mulmod(
                add(0xffdf59699089f65b7928e7f368747c6, mulmod(
                add(0x23926a0866b43912f00862040b873c57, mulmod(
                add(0x11a1621c219685b79be2ee22bb93ed93, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf2c2cbf76b077922c159e6765a523be, mulmod(
                add(0x2bcf4e3aaecc5af5575b0aaecfbae3cf, mulmod(
                add(0x20b2fe4a68635109c1021b142e52cc87, mulmod(
                add(0x21df6240cf540f99f96d521a4ae78707, mulmod(
                add(0x18d439eaba0b2d31f366751653f18989, mulmod(
                add(0x4a8c089a5c8c91a87084795a8e0e2f2, mulmod(
                add(0x28b46b8f2a0a57d377da94322257636c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7272565794d086fdcbfc78300d71579, mulmod(
                add(0x69c07c6ae293bea3baf70644469510b, mulmod(
                add(0x110868906963e4e67f6bb1567e61c27e, mulmod(
                add(0x219075a9dbad52bfdab92454a006f0e8, mulmod(
                add(0x287736d91e32d96859c231fda6935fb8, mulmod(
                add(0x1e229674783921e7fcd51abdbb51759, mulmod(
                add(0x229bab59cf2ed4c7d79b5d8057cca66a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1dd2ee619f4826053ab13f9fd5b2a84e, mulmod(
                add(0x1f45c7f5d829d3f5dbe2cff12a177fe9, mulmod(
                add(0x163d15a3b29808d3dae05a88b25e176e, mulmod(
                add(0xe9062dd9d32f1a704e6880481b65b87, mulmod(
                add(0x1df3761949cee9826e0a4b1eab00246b, mulmod(
                add(0x2f30a66f6778ec3215cc5c4bceee1d52, mulmod(
                add(0x2679cb6d766a215ccbc3a0d5ec3ac96d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x6ffef0eab7dcd4afdd25eda65d16ab8, mulmod(
                add(0x2b3f709674cb019679f381786bf2356e, mulmod(
                add(0xc23c8d35fecf893c46ba19f33546308, mulmod(
                add(0x20e027a88c90909ebbb9d2db22941009, mulmod(
                add(0x2b37c769ac954d9515e6a255a57cc780, mulmod(
                add(0x4194e5a1758f694cbba87e0d07a2d2b, mulmod(
                add(0x13a013a204c0d338169d0febb93ee776, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x179de6bba6cae471fa11fd27802fca03, mulmod(
                add(0x18457cb949ed73eed8063c29b1543c9f, mulmod(
                add(0x17e102b99c22d3625ef80b3dcac80faa, mulmod(
                add(0x2b166f0716cff6d984164ffaedbb5ffa, mulmod(
                add(0xd5aee5920fea373523bf952ebceb7e2, mulmod(
                add(0xdac882f38c3c60e22246819c31845e5, mulmod(
                add(0x2698eeb6aa30f0163afce6f7fdef3ef4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdcc11d22d3dae59536498fae5f177c, mulmod(
                add(0x2ce52f5421d27c61b1000d8068b2d44c, mulmod(
                add(0x27098247a990814ff58b27cb49c8363, mulmod(
                add(0xeef515062bc4f861eb0c30d6789d125, mulmod(
                add(0x72134379929bdca463c177bf497d4bb, mulmod(
                add(0x281a160fe9576f00f9af552af57fe52b, mulmod(
                add(0x10dabda5dc7b01b6cf399f5302e8f722, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28b16b543abc98ad7454d4a931e5ebc3, mulmod(
                add(0x162639baee98ad36f90091306ab00617, mulmod(
                add(0xe2d55dbc33082d8a7308873b20b4db1, mulmod(
                add(0xacc01020d25dbfff7a318bd1ca94145, mulmod(
                add(0xe2fb58766bb6793371cf3f962da5737, mulmod(
                add(0x28bbff860f7831e965103780404e20f3, mulmod(
                add(0x727895a8657f1ea88233a88976c0032, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ad0af88078562e82b8d8a09f6acd0d5, mulmod(
                add(0x14146eea05e483782ada88870a2c5c3b, mulmod(
                add(0x2b23b28b238c6868670c1b87a7ac68c4, mulmod(
                add(0x6875b1dd1a001ef7fcdb5b048df23b4, mulmod(
                add(0xea27ddcfee6b2a8848abeea50670cc8, mulmod(
                add(0x977a791374d7f683474de997840a95, mulmod(
                add(0x232d9e186d59919af1e2bc638052c92e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ed255ba325d9700d4425eb26679da85, mulmod(
                add(0xe730a39af3054e84ec962f32c236c26, mulmod(
                add(0x16738ff1f144bc02cef070cdeae3149c, mulmod(
                add(0x3e1ccb99f74410943059ba4701e8598, mulmod(
                add(0x26d4e9e8ee2664217dbb960db37468a1, mulmod(
                add(0xa1b519a1f95645d5a501d0294ba537e, mulmod(
                add(0x1cf82bda12b78fe3dd978b3c0a3613a5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a8a1b21a848d3a313392261c8f78691, mulmod(
                add(0x1118ab73c00f288a8497fe0849562bf2, mulmod(
                add(0x203e637bf4dee1e3e724773399e7e706, mulmod(
                add(0x2214c0fb08eddf01d43d8ebe2a79b3d2, mulmod(
                add(0x29c6494e237c1455ac4154d4cab16e65, mulmod(
                add(0x13b50586f40938c8898449bc2add77, mulmod(
                add(0x11166fd751a1eeb92869d2602ff424df, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x244c0adbb80df41c49619c16ee7cdab0, mulmod(
                add(0x18cc92a50a020fd48eb96118828c62e9, mulmod(
                add(0x1030d15f2ec6a8be0e58b047655c0127, mulmod(
                add(0x141d128c9f3306cab07d07a8b175e6ff, mulmod(
                add(0xd725d4508f1c3d161643f92111cbf2f, mulmod(
                add(0x195f1abbdc15e0d6784195369d09c187, mulmod(
                add(0xe58ddc20797fd03480ac7c21c7fdef6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24778392f9a611373f6e8374a118f7e3, mulmod(
                add(0x21e373389bbf4a59feabf8b752736a1b, mulmod(
                add(0x2900b2a2747872a47ef211815a453f28, mulmod(
                add(0x2e6812a285591c4ba46bcb80ae77c14, mulmod(
                add(0x125f010f23c65711b6ae4b8c86ac565e, mulmod(
                add(0x2500ec407844528121d8fab0b5e7b3f5, mulmod(
                add(0x222149b89f6e8a39da5babd33ef0c1f4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d88a3e3ae750b2577dae86b25b5c051, mulmod(
                add(0x17b8c84f7a4f6465582d7fa55cb70a4b, mulmod(
                add(0x25ec2abf33acca7e1042dd350848e44f, mulmod(
                add(0xb0d717c6813d6919950e010acb0ce19, mulmod(
                add(0x2a274b509ce8a8ad8642dbe70ac2d8f2, mulmod(
                add(0x26caded582c4c90684b42aa433a354c9, mulmod(
                add(0x25f75d9cd6c7fd2ae01fe328ccaa1862, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x249d6827c3e3d503b867d0c43cee7128, mulmod(
                add(0x219bb8b2f6e45d2ee0dfea7635d26440, mulmod(
                add(0x28cf4bcec72a7e93b55e0fa727b9622, mulmod(
                add(0x178fcd364ff5201991acf92dbff24a64, mulmod(
                add(0x38d34c9d2beedf3e47e1c47ee5fd01f, mulmod(
                add(0x251dd067e8f525fdeb7b84409bf3fa36, mulmod(
                add(0x2f158dd9c3a683c7f7dbe8dd40047254, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdb1e950b63e16b2d7b86212f948334a, mulmod(
                add(0xf5c17d1cf6f34e3dc2ba56c4ad8dfa7, mulmod(
                add(0xf02f05682658eadee499d1f98f554cc, mulmod(
                add(0x17ab24afee538b5dd6b397f2df58775d, mulmod(
                add(0x9c4cd95e37035a8ba887c978ff292b5, mulmod(
                add(0x2726623cc5dee1f33dcc61b1d1fd8f0d, mulmod(
                add(0x1adfabe52176d54893431b9814579c87, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x130881360f46cf5c99f28e2f79b1f529, mulmod(
                add(0x199a2bfd542686c57a502d10599d072c, mulmod(
                add(0x1ef7c3fbf0d44ac2c844be1ed5724705, mulmod(
                add(0x1106b07d5e315dcbfb3f360355d81536, mulmod(
                add(0x258e381d88467778ac8aa01a0779670f, mulmod(
                add(0x2faa926cb51ffadb7057b3517ddad74, mulmod(
                add(0x1f00c07406ef2e445761fb4be12c7bba, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x42dc169558caedc49ff888d21ee8b95, mulmod(
                add(0xeebb4268714d23f8f52a742dccade55, mulmod(
                add(0x13eee09b7c52ae63f6977309a36c380d, mulmod(
                add(0x2ba736a1706dde811a8bd866c3577f95, mulmod(
                add(0x1b662ed0a9798b9836d2f3370dff5982, mulmod(
                add(0x2b6613e6325c1d7c8cf36d7f179217b, mulmod(
                add(0xdc3f1dc30d58f10a88b8e1a6afb610b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27be21e68799420563ccd255ec1d7a94, mulmod(
                add(0x255203f12b31a6276b8fe7e981637c84, mulmod(
                add(0x28224e6f73b961e69fb270f338567f47, mulmod(
                add(0x287cdb49a955d868a7b0f1f05ed86d1b, mulmod(
                add(0x166f810eda131186531510b77361924d, mulmod(
                add(0x15ef25b5c3bd44a9111d01d4b39c1a82, mulmod(
                add(0xcfd6fdcd3bfc5190b365d017ef3ac46, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x188f05475b89bf6b3e343ee7e5e3bf20, mulmod(
                add(0x162f5e4218a33ba0a7020baf8c90cc12, mulmod(
                add(0x26d5c843d721991497bf6fb8bc0d0cf3, mulmod(
                add(0x16d3f4b550c0748c577c21e577dee94d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
