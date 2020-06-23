pragma solidity ^0.5.2;

contract MimcConstants2_0 {
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
                add(0xc5f1aa405a55d3b63742f7417cde399, mulmod(
                add(0x261f3b276b6ee420c98e58cc67564dd8, mulmod(
                add(0x13fda56f406ba3d5e327e2000916a544, mulmod(
                add(0xfb34bd505b003096b2e5819c1ae843c, mulmod(
                add(0x1d068fac0045514f82b8ff99fb8be983, mulmod(
                add(0x2b37e6d790a21a47cd21e820b033230f, mulmod(
                add(0x2e56ba67f1e48a072dbd47fdeab524f9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2fa20afe8fad394c42dce68d8a4d2193, mulmod(
                add(0x26cf3c5d6b6b7b24243df2cadf8f2265, mulmod(
                add(0x231e2f8e8cde139d83fe44ef3fc0471a, mulmod(
                add(0x182bb8f7e8fdd5d8cb247818024373dd, mulmod(
                add(0x69608ce4bb04d7375c5cd4619884541, mulmod(
                add(0x15e50452923c7986201d05cfbf2a6d75, mulmod(
                add(0xcad3c15d95f5a343b83dd4006a83820, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24cb5b97dcfb27130322a384dc5bf758, mulmod(
                add(0x26dd0ed97e9f9df98a41ec6967f41d51, mulmod(
                add(0xed89158040f43509e10a21f9d9261ba, mulmod(
                add(0x20dd7e77ad0e1127fe4bc69db2fd6cd7, mulmod(
                add(0x2799610dd5c61307b5a887a8734ae89c, mulmod(
                add(0x27eeea9d146eef176a94a1e638caab2f, mulmod(
                add(0x14ea07f9e969d7c39142a698fb96426, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa1e571bdfb764c57ba11ae11617ae0d, mulmod(
                add(0x223a395ff2239e17cabd7c270921dd4, mulmod(
                add(0x21a2a10f51119675ff441b989ab1c605, mulmod(
                add(0x22a39d5eebbea6b1679369bdc4842c73, mulmod(
                add(0x783d250c664552d5eea2384b82d1fee, mulmod(
                add(0x1112492f9e311884fb33893586b68e28, mulmod(
                add(0x204dd96f0e0c80d9ba64ed575be7c6b3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x229b09d1b5d30a4ce6ccbdff9a995018, mulmod(
                add(0x19521845e933f844cc3ba27f98be9ba7, mulmod(
                add(0x200fed7609aea4d9d09b345615d134b1, mulmod(
                add(0xa8ef99dbc3219c767b445ea0d20fa00, mulmod(
                add(0x434ef868d6c8f82314c3fe3c0bf2f2e, mulmod(
                add(0x6192baeeb2d93fc0d7fc6bb0ba26a6d, mulmod(
                add(0x1a633ee53a238fe9bb91873789331695, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x195d809e8d90e687c33c92e56a151741, mulmod(
                add(0x62e52e88c2c2f16f2f4f6593b4279e6, mulmod(
                add(0x2e78a44e0474c6c589cb6c2cd1cc34c, mulmod(
                add(0xb7b4e7fbe0db68cff96f8b0d9990fa0, mulmod(
                add(0x23c376358645cefa87e9845981ffeb92, mulmod(
                add(0x21ba0c13c600dba121e5463b26917d32, mulmod(
                add(0x2ca1f4e3ac33d93122564cf1a7892a99, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e13ca54761ad4de045bfb68195ba3b4, mulmod(
                add(0x119acf2e5ba35d154178b6eebb7be7e9, mulmod(
                add(0x1abe32f308f784c2859a6a79543335af, mulmod(
                add(0x7f849607c21109239f1211fd2e4f739, mulmod(
                add(0x1e6e9519a7fef27c7f5fbe2db89cebc2, mulmod(
                add(0x241c07acdfde6ed106f3e3cda98153f8, mulmod(
                add(0x18714057ab4008c56224fd0763016949, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x88be51219b520ce7ec8b5c5e2279886, mulmod(
                add(0x62777520fa8f3fca5cd130a221da7a, mulmod(
                add(0x1c9b405aa9bb06ef23ad6f0980393398, mulmod(
                add(0x2af31b7e9585f2b6340c25d4d796aa73, mulmod(
                add(0x44bb2e77d5ae37ae332477a9542d150, mulmod(
                add(0x282b4615991023b9d8c6fbe3a3443d75, mulmod(
                add(0x1ae55dbfd3ef256f180032c626d172f3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x256327f956ba38833d4b3a7d2a929123, mulmod(
                add(0x182a7ed01b50298c5cd0bbe6b6384296, mulmod(
                add(0x13dd7d3ea091192a058a846b4c84f7ed, mulmod(
                add(0x150051bfa01463240a8e6fae3fae527a, mulmod(
                add(0x72b583cc6d4b995b34af34bd5ff96be, mulmod(
                add(0x2c8896afff9c83acb40f9d0287c0bb7a, mulmod(
                add(0xc7e9d2c4efd2f3bc6fad0d5156b386b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xcb19ec7f5335050d10f78e675d7f365, mulmod(
                add(0xdb0550d4c62dae9b75c20ad5ee324c4, mulmod(
                add(0x2451f525fa6f59413a9dc74826e1e414, mulmod(
                add(0x230b281a6d84cd728a87a9b3f8bc632f, mulmod(
                add(0x21e8ae41cc0ca0d954ead8ff9a7564c6, mulmod(
                add(0xc43a0eb70f4d1b58670129778a21170, mulmod(
                add(0x2d5bcc2bc4bae0aa17f4731462acca5a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xec769d8a1f8ddd29c5e856fbeac1524, mulmod(
                add(0x119a3a4b4bbf772334290ff1b9989e50, mulmod(
                add(0x2f1e22c6885e9515c891c04ec992c2a, mulmod(
                add(0x17eba3f47068c648f1a48b14f6d50cdb, mulmod(
                add(0x9b00bf5d9a991305ed97805c5e16dc2, mulmod(
                add(0xfe1c411f0d1d1c4c06146977571ea56, mulmod(
                add(0x364af0f64e26f0e0e200fa38927231f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x78a6b508abf52bc0f8e4fa4f299d000, mulmod(
                add(0x2c0ae4d8993e19958bfb07b81fb12dc1, mulmod(
                add(0x18ab4164c25decad9ed8bcd3753fd665, mulmod(
                add(0x2403879482b73ff7a134880eae179067, mulmod(
                add(0x2d4a0019a27b01bf9fc2f31151dda01f, mulmod(
                add(0x8d8dff50a06106a965bb6f10de12eec, mulmod(
                add(0x21e5ad52d8e47d78d26486bb2ad4a7d1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa85c64c2aa8da4193d68e9362ce8c23, mulmod(
                add(0xd10779fc653dc1be0ae0f7f0f7efb05, mulmod(
                add(0x1a0e436ab11ab753875bf28efaa46e3c, mulmod(
                add(0x2d71320cce22dcd50ff91155f4f365c0, mulmod(
                add(0x69a17a4391ebb908f2a337f45cea4d8, mulmod(
                add(0x3ceb6eb286edc3eeee842efdfca31b, mulmod(
                add(0x23bde59fa14cb32cde87becab88b3f33, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ac98fb392cf5e65e20df20b287d65e0, mulmod(
                add(0x46e0482320eed847b2ca67f715433a3, mulmod(
                add(0x3b73e8f6e1f178bd676f268b3b2efb6, mulmod(
                add(0x2d83835f92dd7e8211bba17361255081, mulmod(
                add(0x28fed47039869d26933d05c6be50d0f7, mulmod(
                add(0xb1c448ce402a8da24060fb816bc7f3a, mulmod(
                add(0x176fb1b3516e5906395877b9f4c6930e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4bc4d7d7af09cb3181abc965866b6e9, mulmod(
                add(0x131c6aa8e5882878498825ec6f3f80ed, mulmod(
                add(0x143daa365dcd82205554cbcaf4de5ad0, mulmod(
                add(0x234aa04c7e3f0350af4b2760662a018e, mulmod(
                add(0xebe5907c0be22493f9347011ad53e0c, mulmod(
                add(0x216b5b2f5de742f8ac76033b45802660, mulmod(
                add(0x237dc1656c6d5183a2b56f98e77eaff2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc992e94b1c6186402ba1a9bf29a7937, mulmod(
                add(0x7aa5fc4a43f57db01d4611fbc201100, mulmod(
                add(0x2e342f98b40472c457cadfadc1795020, mulmod(
                add(0x292025af8f845e29f9ba41c525973fd9, mulmod(
                add(0x1144ab3bc7ba0fd06ec0120d85bed532, mulmod(
                add(0x105fd73af8ec815ed4faf9bd097013b7, mulmod(
                add(0x24afbbe936c36c228a5d2ffda46c497f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f5853adf7fd5e553ddaa1cfa2d923e8, mulmod(
                add(0x261ab2984b37298e8c84795528cb06ee, mulmod(
                add(0x2928b962e156c7a833fca01fb8f7b043, mulmod(
                add(0x1c55b82599f856a72e16512a25f7d167, mulmod(
                add(0x2ff90ece0755691727724a88257ad6a1, mulmod(
                add(0x18efd00477ea71ec97ff99e468efb1b7, mulmod(
                add(0x1927de584f75f513b55cb5c66b4177f3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ae14dc6a7c168342b0f61d62618c14, mulmod(
                add(0x14709f8020f746bc6460714b884d6fcc, mulmod(
                add(0x131db39c533cd1bf3e7d983c7dbaa111, mulmod(
                add(0x9b273397f26b2bee60cf67711195509, mulmod(
                add(0x10b9eaf4a821bcc7c85b0a4648361dcf, mulmod(
                add(0xa809577afc81f022765213ed5218f03, mulmod(
                add(0x17e40e680ea37898c3f8bb9ffb6e8cd6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e5b30ea786e05336bd2aa8886c1ed86, mulmod(
                add(0x526cd5e4d6339e83e98e4cfc8f7e301, mulmod(
                add(0x1c022ed59a19684f7182fd475246a831, mulmod(
                add(0x6082ae025785051064191d6e5f078bf, mulmod(
                add(0x2bd82ff183333f48c7852f6f75557317, mulmod(
                add(0x11ed16f9d6fd4560a4946ee69d3bb51b, mulmod(
                add(0x2e98df0d80c2e812a8929c7bc3541a0b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x299e0e74be423caa96ee59bf5bdab112, mulmod(
                add(0xf9602ccb01712eadcbdf6067b85c6e0, mulmod(
                add(0x262fcb93227d7c541df6196ce5b4fa88, mulmod(
                add(0x5487c4914cfd14ecbb0fa019f3491d, mulmod(
                add(0xe2456c8dc81908828754c760a437e7a, mulmod(
                add(0x1a4a69274c48deaea4aa8046e4c3c4bd, mulmod(
                add(0x2047ec430280502ae684a7535c529fa1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x138e41bf90da5aa74c921085d8b7df56, mulmod(
                add(0x102df4f29732c83b6cf7a78cc3a20adf, mulmod(
                add(0x39b0ad02b2539e9274e510ebb9bfbe6, mulmod(
                add(0x186f4a43ac7690f0870d47ed80eaee8, mulmod(
                add(0x136b45b7941067b13f6b32b00b67ad96, mulmod(
                add(0x85588b7450b51a452c6ad9c0303c059, mulmod(
                add(0x2be6bf39ac23d3010209876dfea835a1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x112a23f2b5c0f3f62a5a148446a64e9a, mulmod(
                add(0xee764377093655b42a78493a1faf93f, mulmod(
                add(0x14fec1d8ac26aaf9e47edbd5ace43d72, mulmod(
                add(0x120e2a892afa39d8e2988ee06f0b6d13, mulmod(
                add(0x1f1e7fd53865340023c970cd2d3d45bb, mulmod(
                add(0x24f13bd12abd5b22c2fb0dc84b1324bc, mulmod(
                add(0xd3edc8fd3b9f823ea7c9859e43d5766, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xab30445a942ff933a864f46137f3ccb, mulmod(
                add(0x112a789f1037454e6822dbb02b1ceae, mulmod(
                add(0x215c9e5b1a06b350e3dd11f52c9e42e0, mulmod(
                add(0x2e4f58d58ca59772f3349d61945aff77, mulmod(
                add(0x2a967e3576fb6bf7f3ba36c1c7fc14be, mulmod(
                add(0x1ee2beda51a3aaee837d6ff1f192f24d, mulmod(
                add(0x19e1ee8fac80e478a704d8ee750ad76e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x26330966b48f60837d2a3e759d0d67e0, mulmod(
                add(0x1e47dc586646a5d4a81956e1dbe73418, mulmod(
                add(0x2fc3c489332a6c88bd66f89f6598809e, mulmod(
                add(0x2b37ffd901a9f18408151198dc0994e3, mulmod(
                add(0x18866ed259493a9878bd531a503e3851, mulmod(
                add(0x1417897769e7f1258a8ba4c28a517bf2, mulmod(
                add(0xe22e603f745fe38a024c742027130, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b41de5289d2fc19d8c6547c59e5bb3b, mulmod(
                add(0x2b8469fa6c4a3e2fdeaef2899e80eb56, mulmod(
                add(0x6a660aaffbc95dadb3f3ae924117410, mulmod(
                add(0x19d9255ac00f7c14e32d8b94d6098e2e, mulmod(
                add(0x25b59ff230ecb671d8c9540b46fe37d, mulmod(
                add(0x90631ffabf99d7d45b8e876ecb1f275, mulmod(
                add(0x184316b429fe0997138ed950cba84e57, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c4e93e19c9d40427330722386df228b, mulmod(
                add(0x20af81d2914edf3b150a2a37b6857322, mulmod(
                add(0x1c32985cb525cc377df8cfa9a1eb3d84, mulmod(
                add(0x17265e16ccce5b4f40e343edf046f19b, mulmod(
                add(0x1e250c33b811540ed50d826283e0c156, mulmod(
                add(0x163682ded33c92391e2fc9e13b6d94ee, mulmod(
                add(0x15d9a3b2759e77c0f1dc93148ab5f45b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f6128b98c1c912bea475b0b6b34b833, mulmod(
                add(0x3244068ee1c47cd2da8cfcf8217eedd, mulmod(
                add(0x207a947969cea3c68210570d70ab6fa5, mulmod(
                add(0x2c9e089ad047d06e743a999b86f73a11, mulmod(
                add(0x2331a7557581a16a951be800281eded0, mulmod(
                add(0x370e5fb1270621b4ea5150725252fb1, mulmod(
                add(0x1823498ed1bde5e3f73b84b4bce33c8e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x228a11539807d9efe598bfef33febdce, mulmod(
                add(0x1702bb1d24418bd9de7b74bb534b571f, mulmod(
                add(0x2793fdbc1c1f4528c6712319f2dec137, mulmod(
                add(0x1706b71c43bd7b7b4920bbe7ac155a8a, mulmod(
                add(0x1bf2fa53b576e0f76ae3513aa42e35d0, mulmod(
                add(0x233a7c841982f68463dce66c65471bbf, mulmod(
                add(0x490b827acf330b34ae0156a694e134d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2aedd9b394962c63c74cb3f41bf255b2, mulmod(
                add(0xcabd4e60a2666ec3af3169897668129, mulmod(
                add(0xfd62ef9cb67b41478da0f5bf3d864ac, mulmod(
                add(0x1266971938aec86e66b654fc85c1877, mulmod(
                add(0x1e839acd5ebd379da78c9b1585a3898a, mulmod(
                add(0xc48a03b2d7f1db6afe2a7280b91f6ad, mulmod(
                add(0x13ace8e6f4b98cf0fa765809afb1087e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2be89ada694284cfba42f37b1b56b835, mulmod(
                add(0x2c23bcb85c0babb35376cba5c7689256, mulmod(
                add(0x134192ec95f621da3201cdb329bf6e76, mulmod(
                add(0x7bf22b41983316ab6164c2b365b398b, mulmod(
                add(0x28200f3b513e9f6dfd54611a02cc13ac, mulmod(
                add(0x2585ab7c7ff28d8a7dbfc44db686f436, mulmod(
                add(0x2935dedd7fc063146d9bf51d0cac1d8a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x131f2cbb988f7eca5bdc24bdd3cac43e, mulmod(
                add(0x2a545f4d6027e2379ef1cafb22cabb0a, mulmod(
                add(0x193bcf2717e577a36a75c58df853ba48, mulmod(
                add(0x2ed2750fceeaafcc3ef62f8774ec83e7, mulmod(
                add(0x167bb652134c801f47765f0da1525785, mulmod(
                add(0x18a7c3f09d7ec42e874528aa96c84ba4, mulmod(
                add(0x24847328d92d4cfd230e39a5a3a4bae4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2b0c2feae8ac1c611e04e1b37c69f8c1, mulmod(
                add(0xd8fbbef14d8315ce4bdae4368d1d406, mulmod(
                add(0x26b69e9673af552cf367a05d19f3e026, mulmod(
                add(0xbb27ad3364ae5538f5827bc41a3e38c, mulmod(
                add(0x21f9b646bb48d3e9576c39ce390cc9db, mulmod(
                add(0x2d62b9bbe0c29d6cdaa50f8c44d4b918, mulmod(
                add(0xabfc9b0fbd73d66912aba1959174ea1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb03d4490400fc007810d33834b0b8e6, mulmod(
                add(0x1bfdc8003f1ddf1d7bc237e7b68dbaa6, mulmod(
                add(0x5f47c1e0808f59442f4004a3e36c92f, mulmod(
                add(0xd25cd00227c5bb91c82b1d9d0ab3dbb, mulmod(
                add(0x1f6537e3db47df9b51e5332b914db169, mulmod(
                add(0x1d0485f660afda6acbbc397e175904fa, mulmod(
                add(0x18359d57fe7d631269c2173cea6804d4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x37e27b26520aa34503fb803d435a1e4, mulmod(
                add(0x1764ec4d24bcc4b5ef4296b41baefc73, mulmod(
                add(0x119d9479ec76f0e615a8b9567b94fbe1, mulmod(
                add(0x2635b0213400398f26cc5dce763d5296, mulmod(
                add(0x1da29eee1e96e65c588cc33eb8ae6da0, mulmod(
                add(0x26f22f601c4825044454e5d3be5430a, mulmod(
                add(0x382f29bd9322f1e2415af4b4fd11f48, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a0e7fdae9157e89182db9f126a7ef6e, mulmod(
                add(0x7de27c06892e6aff088640d85901c75, mulmod(
                add(0x1d17155c7e228fe8faac755cc33f040b, mulmod(
                add(0x1d1827d0d428f38224be679d2bdb2a06, mulmod(
                add(0x538ef999bcebb7b8582c5b9a83ba848, mulmod(
                add(0x11792115618db7cbe8734cc7bc6b9e0b, mulmod(
                add(0xf093fd5a96548378564dd8ba7ee8fa6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1cb084c0d9fa5c1eb0affa686ec25981, mulmod(
                add(0xdbf047bbac23535e279223eb5c86bb9, mulmod(
                add(0x15ef9a0f4fde7622a4943e9b14d9b2c, mulmod(
                add(0x1ddd460db5dfd6fd8533a9c91e94288b, mulmod(
                add(0x14e18a64f9c88b20a81dbb0429441c55, mulmod(
                add(0x1f1a78abee5615ccf9c18e52bf0acc63, mulmod(
                add(0xcd28bc5ecac9d40e6ff14cc70da6d56, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ae1256dd04db29968fd5a424baccea4, mulmod(
                add(0x2d7a71a17ce7a3381dfd37cb5436eeee, mulmod(
                add(0x2efa266850b992e0fb2f8dad7e0499f4, mulmod(
                add(0x217681548965b5caece0c7fc33492ce5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
