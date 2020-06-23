pragma solidity ^0.5.2;

contract MimcConstants6_0 {
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
                add(0x2f8ca4ff0034ab1ebdfe3d869c6e0eb1, mulmod(
                add(0x2d52c980349d2c1720661645bca453fc, mulmod(
                add(0xd4cc45c0bc635d229879dc356f123f, mulmod(
                add(0x1ed90a5cd7b9c8aafdf04e5c4aaa6342, mulmod(
                add(0x2f28a3e7c3aadfea807454e43a8a00fd, mulmod(
                add(0x8b2a962207e0f2f290dae77e0e500f0, mulmod(
                add(0xcf3c8003d947c5452db47a61048982d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29a5d269eda2a6f7ed81fc913eb3636b, mulmod(
                add(0xdac050cc428841f469aa87c4916af0b, mulmod(
                add(0x139b4f48cceebb01511c3478a8ac5b03, mulmod(
                add(0x6819f9533ab924b106784072c2c8cd2, mulmod(
                add(0x4120c54818093f7d2f18c3ea2bc5cfc, mulmod(
                add(0xc3c6cc241138d001b25a8c6aa78bba2, mulmod(
                add(0xb593562c6269664c609aa60d3ff8add, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8efd5683ef26a227eaa6762c42c16d1, mulmod(
                add(0x19d01a4757840ae0077f0de43cafc94b, mulmod(
                add(0xffcaebb2b4c6aa012356a742553bc56, mulmod(
                add(0x2f09335b8aafdb0be119aa4de9d36863, mulmod(
                add(0x1583031ccdef331d3744296d4064419d, mulmod(
                add(0x211724c8c6075ae0f7d82eb106c79cb4, mulmod(
                add(0xd3ef3f2c2f37e05ba270bac6e790e85, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2228c5e7bbe45c8f41a296c598c5280d, mulmod(
                add(0x1c4323f3fa6a94de1c7c64ff8b82d654, mulmod(
                add(0x2b1c40cd51a65fda1f291fcbb2c423ff, mulmod(
                add(0x5d04d49eb36db1e24aba2dc9289c7c6, mulmod(
                add(0x20aab02093a0ae920299f011b5f4b4b1, mulmod(
                add(0xb323df30bfb5f4d844790ecf5421ec6, mulmod(
                add(0x12ae35ec1d4e6649fbf1497baf2773a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x174ebe57b0eebff0b77805b89e0a4762, mulmod(
                add(0x4905e585bbac1bafc3b8aab85121132, mulmod(
                add(0x2871456a3e6800d991e1bb91b21b22d2, mulmod(
                add(0x25ac4ac8bb3b7f4f5f8b0f1af1ae17d0, mulmod(
                add(0x1334b78d359928ca756e85f86e3aa9f1, mulmod(
                add(0x5644abf4c71923ca208876a950924d0, mulmod(
                add(0x9c9fb090be67ac7f3b6e8a8bfc5a67b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x44eb5c9c21449526ce12ba9c70e8c96, mulmod(
                add(0x1f2408e189383d964bfb413e21f452d4, mulmod(
                add(0x1053e5534a758c9a7945d0cbdcf8f521, mulmod(
                add(0x295acb12ae91e2afcd08e08de49c1cfb, mulmod(
                add(0x2f0f5342ecdd0f6291984a251e1aa175, mulmod(
                add(0xc9dd7227b8f3aa855cf184fd9f23a3c, mulmod(
                add(0x1f7c8079007fc1c51525517ebf1bce1d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a5814b938238bd048701be9f1fe2298, mulmod(
                add(0x19d77dca57c85644baf8892576881b85, mulmod(
                add(0x2d1ab765e2e0b8470769bcc532ab2b36, mulmod(
                add(0x223049fac6f913d5adeb2aa430b2560c, mulmod(
                add(0x925e57483cedca02467051b9179c413, mulmod(
                add(0x4ed5502ecac3d3ae6d3774f140c9cc2, mulmod(
                add(0xad2b9251b88947cd748f25c72a1e94d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19db4cda872c240998fbddb9d81c47df, mulmod(
                add(0x22ed9205104f323d113601c015c6a334, mulmod(
                add(0x1d5164de65befe33f3b6528b23ad3fc8, mulmod(
                add(0x21aa29eaffe96780e4cbd90796d8d237, mulmod(
                add(0x19fe292b057e73669af09f2867291990, mulmod(
                add(0xc8a807a448e3008fae962da14054950, mulmod(
                add(0x2087d38a3eb595a1e408c74c8360dc13, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x272c745b5da8a54c41b559584ecd8175, mulmod(
                add(0x269ecf487cc238830274ae1e017f67a6, mulmod(
                add(0x1c310a6983c9e65680f868d669a8057e, mulmod(
                add(0x17687b8045060a5b77a7185fa17e6158, mulmod(
                add(0x1e5729d0ed6447330ddd5d33f3efd37a, mulmod(
                add(0x1905e7e05f60f74b7cb436dce49a268b, mulmod(
                add(0xacd8d7163f7f5159ad9a059ab698b3f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa06ec88ff7d911f46943055bf62eb0e, mulmod(
                add(0xaa71b18f449196c1ef138dfdfac3936, mulmod(
                add(0x275aa5ed44c71ff469a345bfe4b05d2b, mulmod(
                add(0x6d80935ef90a922f729a8f2e5d7e9b4, mulmod(
                add(0x22174bd6621aca93ba5c0b21dfd6dd3f, mulmod(
                add(0x172e34dbb0c72adbb63f1de3d3913fee, mulmod(
                add(0x13f3c98213873b8dda8203ebeca03c8e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb7f34913a0cb161a3363a18742c651d, mulmod(
                add(0x2083880cf5a5074290fb661111f51e59, mulmod(
                add(0x216e8fe9c7ac9f79bf57a4263e0dc5ed, mulmod(
                add(0xdec5e048970da744445e933ce716970, mulmod(
                add(0x82ad2a6e8c449286e8453e7aea5c7f8, mulmod(
                add(0x2a75d661cb9eff593212100032802929, mulmod(
                add(0x11799dce647a520075b4e7a6fbf761d6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x168c62098db43ea1ca976e3d30c57ce8, mulmod(
                add(0x10619f49b7b5d44174214fcc1759623e, mulmod(
                add(0x5827160b6410333d7d9155c9462b84, mulmod(
                add(0x9ff79a500d395ed23db383325d617e, mulmod(
                add(0x3f555d732397e9707ecaf896bfd77f2, mulmod(
                add(0x2ceccb699a27468e13f33ab920ae1a4b, mulmod(
                add(0x18056c222b7c1c1f58a52579a8a1c9ff, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b79d9ee47ed3b898295c722526e75b1, mulmod(
                add(0xc637c37ce68182555bccd6dfdaa1e2c, mulmod(
                add(0x1aab7bcacde4a24b2bed24f55ec47bcb, mulmod(
                add(0x2500e6138a83b006b91121361b58809a, mulmod(
                add(0x10640a7daf2faa0f7646c07b0f997d4c, mulmod(
                add(0xb1a7aad9bb48c56354d1ce85e458064, mulmod(
                add(0x298478a3cd2ca9b22236028421158f64, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x224d890ed77ce49bcdd7c10b2c0271a3, mulmod(
                add(0x2720eb3118221d3e4c56a960ffc4c6b6, mulmod(
                add(0x27c7ffd58bde822b64e895abc2c499aa, mulmod(
                add(0x1ed9e9a3ab349a5896be0ebd4c8682cc, mulmod(
                add(0x140cbea99137f746a33aecdb163edec2, mulmod(
                add(0x165094c125c5429cbce3b56755e725fe, mulmod(
                add(0xe42e7dcba95af00f2e9aa9f92064462, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x179c91eed5314bd2036c7655bada33bc, mulmod(
                add(0x14c9175d6dcd2aba8d6545b370fdf992, mulmod(
                add(0x80b91cc0cdb7ca0f40cfc90dfa5a63c, mulmod(
                add(0xec68f191783d79bb41dd1bfeabb6a38, mulmod(
                add(0x1aff68e0ba4411078766f32db2641d, mulmod(
                add(0x2ac354740389789b8fa6042d7add7ed8, mulmod(
                add(0x1d3883bf79d57498b1b7ec1fc1d5140b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ce2665686441add3b0cec0c6c66cf32, mulmod(
                add(0x5c388f94b38d69f28189f04e72c1782, mulmod(
                add(0x943c507af51b5b48b7e7a893bec64fa, mulmod(
                add(0x2297595953ab756c63ba0e2233f03ae0, mulmod(
                add(0x2fc2494b7e1b969cb2363626777a9bb6, mulmod(
                add(0x28f52456f0f5fefbdbd9914630e352f8, mulmod(
                add(0x417b43210097a84dc633dc1ce472e87, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11af9c257bf039bdec3c82b0d36000b2, mulmod(
                add(0x1fd97bf21c5b707b51583d09c2627cc1, mulmod(
                add(0x1af438bbe639a2fa6d404f5340bce2e, mulmod(
                add(0x2bb744f0afd1d4a8f8713665f7fb6eab, mulmod(
                add(0x847b28237a6a952827ee4145cb5df3e, mulmod(
                add(0x2b0d29093fa2042af6307dcf7b1be9f5, mulmod(
                add(0x7fa54636c16b0c026a705e659b05f3a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4a748bd9c5e586080d1989abbe6dee, mulmod(
                add(0x2d938bb3cda897751ffb9fbc7f9eefc9, mulmod(
                add(0xc2ce88c27ea5ff80f41b17eca230052, mulmod(
                add(0x21ed6efac9bb214068bb5ee896968c09, mulmod(
                add(0x1cbca8f4cda89154d4c9196cab16936c, mulmod(
                add(0x69faff19dd83c976a92ab98e573cb46, mulmod(
                add(0x1ef6d301041a2224e350c35df29a2b60, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x170cdc84609b8022b7e677701a559bf, mulmod(
                add(0x18cd80c3138a1400775d7ab388056f17, mulmod(
                add(0x236a9b106fc265895c9e2438cfb32ada, mulmod(
                add(0x20c1b2753edc252284b22240a99c0b37, mulmod(
                add(0x2311fb7e589273655c80e23dbdf52df8, mulmod(
                add(0x1053c37a924ce0ff017cb6b79ca581c2, mulmod(
                add(0x1ccbc32a2e2f8b5c3397e4ca3573c099, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x14912088f21cc3c99cb5858dd2c23bb8, mulmod(
                add(0xdd5063266547d7c5d3e8b6203cc4339, mulmod(
                add(0xe73a674c7c5fe66eccae04d489da08c, mulmod(
                add(0x67d8bf4eea63121a6c5bf8a2e4df89a, mulmod(
                add(0x22c046b77c6b4b820eaed4682ffb983c, mulmod(
                add(0xd393e2072074e9bc7a0bca883eddac8, mulmod(
                add(0x27dbb701bbe4078b41a0e212c9a2bc32, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22efa04daecc45a7120a7b4a3cd0acd6, mulmod(
                add(0x15e894495d8a9c16b756e756f22ad343, mulmod(
                add(0x1a45a2c4b3d96629c83334a741084ddc, mulmod(
                add(0x19085bee553555cafc67d92b20c421bc, mulmod(
                add(0xc2b4f9d1f67bf4fac85152cd2364321, mulmod(
                add(0x29f39760413c5c2f4d8000c7f500265e, mulmod(
                add(0x2f921fc581de9bf1a5c6a2b6c199c5ca, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x878757bf87fb797099649f90418bf76, mulmod(
                add(0x2090876184739df42639626cd924c4ba, mulmod(
                add(0xf6eb34399ee9af392f3908777b86674, mulmod(
                add(0xb8cf1e4de287a22fcd6a2a2e1b87595, mulmod(
                add(0x28d3ea9aef3e6cae4dd2704baafa68c7, mulmod(
                add(0x2d418608f1f41801a73f56fc5b796914, mulmod(
                add(0x55829af38f55200bdc8b3c2dbf916f0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11576d88ff3c71c8afc9c86db0c4563e, mulmod(
                add(0x2a4ed837aff5fb4ab767ff62004a8f6e, mulmod(
                add(0x2dc1a15332ce69598ea5d5d0b576b6c8, mulmod(
                add(0x21827363f5b7f173a74c1426529b7e63, mulmod(
                add(0x356763c822ad91c9d0b2b1381f940c4, mulmod(
                add(0x9fcdc0642e6a8343919e07ca8424a32, mulmod(
                add(0xbfca68dfad89380b16663d6b220df9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb57ef76ac613b6dcd60e6175a24aeff, mulmod(
                add(0x13d391420eaeddd3a2aa03cf46a47f91, mulmod(
                add(0x1af6b2a63c6ad0127088902e38583afd, mulmod(
                add(0x2e008f92b8ff5a3a99b5348e6380786a, mulmod(
                add(0x177e7a19af1e7e90be3b35cbb833b066, mulmod(
                add(0xaaeac6b1365c31164917e18ac215201, mulmod(
                add(0x1b53e4cde6dc1b56c353f2106fb3c58, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a76b12676f5639b1a98d82f1665de16, mulmod(
                add(0x1eea4fe1ba64ad484f1abf56b467ebf6, mulmod(
                add(0x1251a6badb61b7dff7b45d188fe372d6, mulmod(
                add(0xa96f26393efbf3326bcfd3ebb8d1004, mulmod(
                add(0x2340872e32baca073aabd1629720f7b6, mulmod(
                add(0x10da7166566ed687545b175f7b231631, mulmod(
                add(0x20026b64dc015d2f704d87ac2e751405, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2693826d863aa814dcc75428b77091ab, mulmod(
                add(0xc79a7f38ead1d15aaa318b56387ec39, mulmod(
                add(0x27d86e201d6274ffb9f66773b5d8efb4, mulmod(
                add(0x19521fd9ce5ad0fb3b12f6e93aaca93, mulmod(
                add(0x1ae7b48829b55044b3726c3cd596a4a1, mulmod(
                add(0x1f95b0bb5dec03860f6b69db6954537d, mulmod(
                add(0x19dda80444af83aae6598c028b355ab, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e228ea7fed5c9f54a2b654ef08df5b1, mulmod(
                add(0x8b29d158be9799001a60928e45102d8, mulmod(
                add(0x1ec7f9834090a76e03052479e8d86bf6, mulmod(
                add(0xcdae4b7ab596b0e0ea350e23b3f7464, mulmod(
                add(0x12e931fe9cc0c29ade61cb858761876d, mulmod(
                add(0x251ac80d8226b0e1cf3f2ba1e2f77843, mulmod(
                add(0x157876f6be81fc795e73a75d8b52b5f9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18fabbbecb7bf53e0ad444260f8a403, mulmod(
                add(0x293df05d8af13ba96d5692374e58b55c, mulmod(
                add(0xc246f02b38a0d4f1a52f3fd11f029f0, mulmod(
                add(0x1c02e57d19589df18eb7ad275bbc453e, mulmod(
                add(0x1e4353e7d618247ff959d74e72eb8d, mulmod(
                add(0x1547aa679fb4339ece596bae0cd35c06, mulmod(
                add(0xfb4ae4fd926ef9f6910da324857a154, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x13b049d854c6bc7e2aa34657dde9de2e, mulmod(
                add(0xf37187ad7d329ea70c0b0aac3abfd71, mulmod(
                add(0x298a3e4be49976869f8ea4d92a64f30c, mulmod(
                add(0x12e420ade1fc8847113cb6adcd4c9656, mulmod(
                add(0x28e74038c6bf969dc690fcc6d257f66, mulmod(
                add(0x1c4e90204e6ec958da55ede6b06a03bf, mulmod(
                add(0x776b07b165110d0241f9dddbbfdb7b0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ac958e4692268ff6b3f2662250f169a, mulmod(
                add(0x154248f6a250f8b0fab3906c27523076, mulmod(
                add(0x2c8b448ce56d314a5a9528d2f894101c, mulmod(
                add(0xe31bacac710981bada61411b0fdbcce, mulmod(
                add(0xca71a05179e24e1e542f00471e48453, mulmod(
                add(0xf922b2fb045ed4d4d9d1bbc9ee06de, mulmod(
                add(0x28fc2898c9b7cc6392ca296f9400771a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x119f07697177ebddccd7a1ab76cd95a3, mulmod(
                add(0x1dc6509d78e8d2c3e6f3a0094454d958, mulmod(
                add(0x14f74e3c7c3aa2ead25259e9f05d7d32, mulmod(
                add(0xd01e97c27d074941b38ad1448441caa, mulmod(
                add(0x2faffca87b9a90cdab76e6fe1b847305, mulmod(
                add(0x2f8ce7fe6f30b1b198809fe84c28468c, mulmod(
                add(0x2059f5e2ca9ce5d76c68652c30e4e9fb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x123047e616c687ef3bb579db78cbce3d, mulmod(
                add(0x33d08c6dc0ffd6292efcbf56e47a07e, mulmod(
                add(0x1ab6ae21cb272d5b2705b0d5f2e72459, mulmod(
                add(0xb7bcbe48269376a017ed8ab7f144c9f, mulmod(
                add(0x24b0d5ecd05abd8c623b0b693df5e588, mulmod(
                add(0x276344db7177dd432d7f6d98ee6440d4, mulmod(
                add(0xa38aa5849736b6c45f7d9f02e2575a1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e102e48ffcde63e04c01c780ed997ce, mulmod(
                add(0x49285f8d00a089b2ab2c1f41b098300, mulmod(
                add(0x98e40f302e6b15aec092456b30cf315, mulmod(
                add(0x9fb9422616765238db6e92b249b4796, mulmod(
                add(0x22516cbfa4696614b2a178254d1a8b1f, mulmod(
                add(0x14c9b7f004ac4ea5192bf850d968bac5, mulmod(
                add(0x6057d822416ac17d87e96844dc2924e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x19184a03a120092af6c0a7064e32a1d5, mulmod(
                add(0x6664a651b94a0b81e8380fbe96d5ec3, mulmod(
                add(0xe4890bfab59931d3cda04642ef431fe, mulmod(
                add(0x134467cb995faf0affb2a866bffcba96, mulmod(
                add(0x1acb0530e2076a40176ee5227f9997ec, mulmod(
                add(0x12af2cd93f499973f1422636186acc10, mulmod(
                add(0x1546a4b3007a1c73046d6582d9df7ad2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x179808284b5dab58834af5b3032a86b0, mulmod(
                add(0x14a2b5aaab1a0af034728a91fe87234a, mulmod(
                add(0x1c3b3c532438b60df5f702ed35b5dd58, mulmod(
                add(0x269d2124050c3af38ad3073a61df55d, mulmod(
                add(0x1afc5497672d12818e9d0872d3548d85, mulmod(
                add(0x230fd4d034267463a816134e35deaf20, mulmod(
                add(0x2e2b5ab29696e039914655df5b231d81, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2305ec18b071229237fbae21a016ac2e, mulmod(
                add(0x3d612ca51db74229c346c92d5810edf, mulmod(
                add(0x1db88ff4a27a0c18c150bc3a576528ee, mulmod(
                add(0x210f64842a8edee8b63ba317c58a26c4, mulmod(
                add(0x2b77707dc873fd322b5bb5df78374a62, mulmod(
                add(0x118b2bda6d31ac9d269720851b87279b, mulmod(
                add(0x297cf4e6ef3a42a3b8fac5af503a2254, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1542b77185fec127ba1a645e8441e224, mulmod(
                add(0x301a1c13dd49e3fa20417682dc10347, mulmod(
                add(0x15dff9c9c02638685a5e86e9f7e1f512, mulmod(
                add(0x2dcac786b425c592fff0ceda87c2c29b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
