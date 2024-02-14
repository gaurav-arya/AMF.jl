using AMF, LinearSolve

using JLD2

using OrdinaryDiffEq

par = load(joinpath(@__DIR__, "params_Bidkhori2012.jld2"))

function sbml_model!(du, u, p, t)
    # assignmentRule: variable = mwa6994523_5d45_4000_af0c_3e94073bf183
    u88 = u[80] + u[79]

    reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12 =
        p["reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12_mw575f7f49_3663_47f1_b492_5b92c1c4345d"] *
        u[1] *
        u[2] -
        p["reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12_mw53c64fd3_9a1c_4947_a734_74a73554964c"] *
        u[3]

    reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d =
        p["reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d_mw8cfaf07f_dabe_45de_93cc_ef2c7fd31104"] *
        u[3] *
        u[3] -
        p["reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d_mwab52aceb_4b19_4317_b2da_97ccbb973dab"] *
        u[4]

    reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923 =
        p["reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923_mw6b97a1ec_2cba_4bce_96f7_ec1d0fa2d16c"] *
        u[4]

    reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04 =
        p["reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04_mwf1697f55_a3f4_4fb6_ae1d_f96f09ad1daa"] *
        u[5] *
        u[7] -
        p["reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04_mw880a5942_7549_4466_bd19_0e1768a3a533"] *
        u[8]

    reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644 =
        p["reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644_mw7e889122_d26c_4d09_bae4_d313b992dc8e"] *
        u[5] *
        u[9] -
        p["reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644_mwff6f49f7_268a_4f08_8d36_3ad8449d7472"] *
        u[10]

    reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526 =
        p["reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526_mwe645e76e_bb00_4c22_b25e_a2e77a6aada2"] *
        u[8]

    reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335 =
        p["reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335_mwb0744746_88a2_488e_a483_266747a044c6"] *
        u[10]

    reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe =
        p["reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe_mw9e24066c_51a5_4c7a_af7c_4656155a4eb0"] *
        u[11] -
        p["reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe_mwab1ef4d4_2acc_4fa2_b07c_fac51fb7bfaf"] *
        u[5] *
        u[12]

    reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db =
        p["reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db_mwc4824ff0_2b51_4d66_ad48_1145f670a6e1"] *
        u[12] *
        u[9] -
        p["reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db_mw0f1d282f_1c6b_455c_8254_3760632c6ecc"] *
        u[13]

    reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308 =
        p["reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308_mw0aa92e25_f9aa_461e_92b8_23b1b5b3ab92"] *
        u[13]

    reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28 =
        p["reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28_mw2a4ed8a2_fce4_44a4_adb9_edc24a06b4e1"] *
        u[12]

    reaction_mw4817365e_a33b_451f_bee1_de748377ede2 =
        p["reaction_mw4817365e_a33b_451f_bee1_de748377ede2_mwe879a9ac_4b8d_4c9a_a157_a3751761cf63"] *
        u[11] *
        u[14] -
        p["reaction_mw4817365e_a33b_451f_bee1_de748377ede2_mwa18578d7_236f_4939_baca_52259e38fe15"] *
        u[15]

    reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2 =
        p["reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2_mw289fed85_e6ee_43e6_a69f_77b5f487a452"] *
        u[15] *
        u[9] -
        p["reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2_mw8768b5c7_b227_4825_aa55_a525b0d915c2"] *
        u[16]

    reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6 =
        p["reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6_mwd12a67b3_6d98_40e9_a54b_282a577498eb"] *
        u[16]

    reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3 =
        p["reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3_mw6ac313e2_e8a9_42a9_b13a_27e55c1012a2"] *
        u[15] *
        u[17] -
        p["reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3_mw93f832d7_eefb_43dd_853c_a0d7a76023cf"] *
        u[18]

    reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a =
        p["reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a_mwbb727dc5_30e8_45f4_9d15_3b34be5c1e93"] *
        u[14] *
        u[17] -
        p["reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a_mw7ae1ee96_563e_4684_bc9a_8f4ef373620e"] *
        u[20]

    reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc =
        p["reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc_mwbc5340b6_06b7_4081_bd0c_e7a397f06a92"] *
        u[11] *
        u[20] -
        p["reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc_mw0df80c0e_c32b_4f90_99bd_e8f90e4c8109"] *
        u[18]

    reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61 =
        p["reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61_mwc585e0e4_b7e7_4290_8a6d_10fcd9759a2d"] *
        u[5] *
        u[14] -
        p["reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61_mwf44d37d0_fe7f_4e47_bf10_1e734fbc3391"] *
        u[21]

    reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb =
        p["reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb_mw3d564c3c_aa54_4c16_90be_662cfcbf8bc8"] *
        u[21] *
        u[9] -
        p["reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb_mw371642bb_3836_4ded_93a5_68fa9b464896"] *
        u[22]

    reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93 =
        p["reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93_mw736e4a7b_4a25_4d32_b96b_b088e3bd41e7"] *
        u[22]

    reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2 =
        p["reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2_mw084cd67b_f328_48a7_8e16_1d6256c8c137"] *
        u[21] *
        u[17] -
        p["reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2_mw43f177dc_f522_4dd1_b8e5_21b2b8fdfdba"] *
        u[23]

    reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd =
        p["reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd_mwfa6a58ab_0ca5_4c05_92b0_870593ac135d"] *
        u[5] *
        u[20] -
        p["reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd_mwb9547c37_09b7_4258_95ab_8039d4088298"] *
        u[23]

    reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e =
        p["reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e_mw7e09242b_bd80_4af0_90c8_e0cddace89fe"] *
        u[18] *
        u[25] -
        p["reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e_mw2dfc8a19_1792_4e12_af38_8bfbda31a577"] *
        u[26]

    reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89 =
        p["reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89_mw553c0b3c_af7f_4309_8c61_0f1e2c32347c"] *
        u[27]

    reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d =
        p["reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d_mwfc146e94_8070_4727_8416_fb55829068cb"] *
        u[26]

    reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7 =
        p["reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7_mw26688d02_8ab9_4123_89c4_022b981cb72c"] *
        u[28]

    reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f =
        p["reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f_mw5639395a_a5cd_46dd_81b8_30fe72400a2e"] *
        u[23] *
        u[25] -
        p["reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f_mw9cc637fe_d9ca_47d2_a4dc_66009d458094"] *
        u[28]

    reaction_mw3c617363_649b_4460_a694_36f7a3127a62 =
        p["reaction_mw3c617363_649b_4460_a694_36f7a3127a62_mw19173345_925d_427b_8658_add0978e5931"] *
        u[27] *
        u[29] -
        p["reaction_mw3c617363_649b_4460_a694_36f7a3127a62_mw9f6790d7_19ce_41d9_b4de_a1658c047501"] *
        u[30]

    reaction_mwf31259aa_32b7_4104_be70_045297b9a512 =
        p["reaction_mwf31259aa_32b7_4104_be70_045297b9a512_mw23e16d40_acbb_4658_a336_be5d0b0dd86a"] *
        u[30]

    reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c =
        p["reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c_mw10c97b8e_72aa_4f56_b3b9_c94baad7e213"] *
        u[5] *
        u[29] -
        p["reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c_mw0b6eb5f7_b133_4b3d_bf15_9fd6c2e9332d"] *
        u[31]

    reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53 =
        p["reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53_mwe483687f_b591_4c42_9abc_7ea9f47470bf"] *
        u[31] *
        u[27] -
        p["reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53_mwcf964aba_9db6_46c5_b687_beafc5d89169"] *
        u[32]

    reaction_mw652570eb_c9d3_499b_b877_61d360b10980 =
        p["reaction_mw652570eb_c9d3_499b_b877_61d360b10980_mwb881f20a_cf8a_493a_aa84_59ee90f26dd9"] *
        u[32]

    reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19 =
        p["reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19_mwb4c6ed27_c7ec_438f_bafd_4a09a9f356f1"] *
        u[31] *
        u[9] -
        p["reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19_mwba77a9ba_078d_4ec6_a8b8_d7042a2cefe7"] *
        u[33]

    reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a =
        p["reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a_mwe1743f7b_ca2c_47d4_91d7_aed2748d98c5"] *
        u[33]

    reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3 =
        p["reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3_mw9f1dbbe6_8aa3_4180_bcea_04343649d7ba"] *
        u[34] *
        u[27] -
        p["reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3_mwdf20ff60_f0b7_4c2a_b393_586ec1337e67"] *
        u[35]

    reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca =
        p["reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca_mw91f2ca92_9556_4fb8_ae12_0b72f3e3f261"] *
        u[35]

    reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33 =
        p["reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33_mw77c60377_28ae_4aad_b911_5768fc8b824f"] *
        u[36] *
        u[37] -
        p["reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33_mw2eed2db0_ba78_435b_b2c8_ee91efdba1b4"] *
        u[38]

    reaction_mw1bd186cf_4762_480a_b70d_d7a775462398 =
        p["reaction_mw1bd186cf_4762_480a_b70d_d7a775462398_mw7e974605_8d9c_4250_8f69_072aab1f24f7"] *
        u[38]

    reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2 =
        p["reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2_mw11cdaca9_941c_4a59_ba2a_3bfeafb65aeb"] *
        u[36] *
        u[39] -
        p["reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2_mw58c37b3e_91e7_445e_846e_77cd0b2320af"] *
        u[40]

    reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4 =
        p["reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4_mw432640ec_11b9_484d_ba26_415538ab9a10"] *
        u[40]

    reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe =
        p["reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe_mw11bb74b8_d908_46f0_ac4d_06e8dd1aa5ae"] *
        u[41] *
        u[42] -
        p["reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe_mwb44117f5_20b2_495e_adf3_3467cd119fd6"] *
        u[43]

    reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d =
        p["reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d_mwa4c71b8d_fb74_465b_b76e_cec4e4c95484"] *
        u[43]

    reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9 =
        p["reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9_mwc40b3165_cc16_4f78_86b5_e34f2731dcbb"] *
        u[41] *
        u[44] -
        p["reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9_mw8bff2fe0_b582_4020_8f05_83f14451b1c0"] *
        u[45]

    reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b =
        p["reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b_mw3d07dc22_f821_49a5_9712_820ba9592353"] *
        u[45]

    reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d =
        p["reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d_mwa8f70790_9f44_4548_988e_49d13016d2f1"] *
        u[36] *
        u[47] -
        p["reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d_mwaad540b6_783e_4576_8862_ad522fd897db"] *
        u[48]

    reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d =
        p["reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d_mwfbc395b5_05b8_4e27_9696_c3ba52edaf74"] *
        u[48]

    reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b =
        p["reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b_mwc489f472_68ce_44e7_aad1_f8d2f6dda4ff"] *
        u[41] *
        u[49] -
        p["reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b_mw56f1bdc0_66fd_47c0_806a_beeaf123e2f2"] *
        u[50]

    reaction_mw40950d59_1012_4361_8418_73e25758e367 =
        p["reaction_mw40950d59_1012_4361_8418_73e25758e367_mwa17c895f_29d8_4977_a99f_cf9bf6216785"] *
        u[50]

    reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419 =
        p["reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419_mwafd23622_952d_44b3_a437_4aa12422add7"] *
        u[39] *
        u[49] -
        p["reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419_mw9d9a7d08_b19a_44f1_a806_151597049345"] *
        u[51]

    reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41 =
        p["reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41_mwac85fd83_4e73_43f1_9c42_01773349d50f"] *
        u[51]

    reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48 =
        p["reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48_mwd23d026b_c5b7_4742_aab9_b9beb18ec9bc"] *
        u[46] *
        u[52] -
        p["reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48_mwf4c4d7a7_1498_4f6c_9d72_cd5cb012146c"] *
        u[54]

    reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671 =
        p["reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671_mwe3e5abe4_9f92_43eb_92e4_cea771f5bf14"] *
        u[54]

    reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252 =
        p["reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252_mwa617804d_95cc_4197_a39b_264a2c66b5a3"] *
        u[53]

    reaction_mw1d8c2435_bb85_4352_a25f_82033250579e =
        p["reaction_mw1d8c2435_bb85_4352_a25f_82033250579e_mw254868f8_c9fb_493c_bc1d_807cc83c18e6"] *
        u[44] *
        u[52] -
        p["reaction_mw1d8c2435_bb85_4352_a25f_82033250579e_mw78a41659_4abc_4614_9e83_38cbfe1c5262"] *
        u[53]

    reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c =
        p["reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c_mwbc2119ce_ade3_4e2a_a3bc_a29cd77adf72"] *
        u[46] *
        u[18] -
        p["reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c_mw54b0e5e9_710f_438e_a8d3_749c594667bc"] *
        u[55]

    reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730 =
        p["reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730_mw1ddaf9f4_dcab_4dc2_a6fa_5ce85b9d7a3a"] *
        u[55]

    reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30 =
        p["reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30_mw60892818_7ef4_4f65_8003_9700a708c66c"] *
        u[46] *
        u[23] -
        p["reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30_mw6843d346_6e9f_43d5_97f6_1059f164aa16"] *
        u[57]

    reaction_mw4685274a_2b55_429f_927f_3fd863592af6 =
        p["reaction_mw4685274a_2b55_429f_927f_3fd863592af6_mwdaa378da_64fe_4ea4_b79d_c25733837b9f"] *
        u[57]

    reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4 =
        p["reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4_mw3f5e2165_9bb6_4ac3_992e_50943dd2ea05"] *
        u[56]

    reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f =
        p["reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f_mwe49ede89_014e_40f2_acfd_0d1a0cd11fe7"] *
        u[58]

    reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b =
        p["reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b_mw90873203_7a5d_4fca_a789_5e989ff0c999"] *
        u[18] *
        u[6] -
        p["reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b_mw92d81b3b_fa59_4637_8540_8cb8482490d9"] *
        u[19]

    reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630 =
        p["reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630_mwcc2a950d_261b_4fd7_9c08_9f3c194ba09d"] *
        u[19] *
        u[60] -
        p["reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630_mw1351daea_68be_404a_b7b0_105920ff3371"] *
        u[59]

    reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657 =
        p["reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657_mwc6b3c76f_af7b_488c_8751_28f1d9ab90a1"] *
        u[59]

    reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4 =
        p["reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4_mwf9c81339_e73a_45b5_a714_0854b718d44f"] *
        u[23] *
        u[6] -
        p["reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4_mw587125c7_6092_4627_9cdd_2415b77a8307"] *
        u[24]

    reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014 =
        p["reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014_mwa575cf96_3d57_4222_ac71_bd17006ef035"] *
        u[24] *
        u[60] -
        p["reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014_mwf7658bc6_acb6_411e_ae2c_9d8de7738d5f"] *
        u[61]

    reaction_mweb93165f_cf03_48f1_b035_59d79e324314 =
        p["reaction_mweb93165f_cf03_48f1_b035_59d79e324314_mwa137184a_0eb0_4bcb_971c_8e19231b2c07"] *
        u[61]

    reaction_mw85e457d1_73f8_4236_bb61_a128d300003f =
        p["reaction_mw85e457d1_73f8_4236_bb61_a128d300003f_mwfa680314_051c_4b10_afc9_7e7fbee49e3f"] *
        u[5] *
        u[6] -
        p["reaction_mw85e457d1_73f8_4236_bb61_a128d300003f_mw97b9ab43_02ae_4e42_a524_6b781633a255"] *
        u[62]

    reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6 =
        p["reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6_mwcc0d3fcd_9b9e_4390_b588_e57b57d89d22"] *
        u[62] *
        u[60] -
        p["reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6_mw56f1be7e_e303_4a72_be17_5bd08e3eb1f2"] *
        u[63]

    reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687 =
        p["reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687_mw1decb177_5075_41f3_a348_ca13b8f4497e"] *
        u[63]

    reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d =
        p["reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d_mw001b8124_b461_482a_8c8e_30bffc6718f7"] *
        u[5] *
        u[64] -
        p["reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d_mw40eca7d6_80b2_4926_9c2f_330422db0814"] *
        u[65]

    reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91 =
        p["reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91_mwf3d00ca5_89dc_4693_92ec_a47db8150144"] *
        u[65] -
        p["reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91_mw91a84697_3231_4fa6_b6ff_d69ee86056dc"] *
        u[66]

    reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8 =
        p["reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8_mw901b5284_bdae_4040_b77d_10f1ec267f06"] *
        u[65] -
        p["reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8_mw94cadd24_0432_4f89_a6fc_96cb0475c44e"] *
        u[5] *
        u[67]

    reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31 =
        p["reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31_mw688106ee_719d_4995_b1a0_faeefdb0af5a"] *
        u[68] *
        u[67] -
        p["reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31_mw85c8ff7d_8d7c_4403_8a58_4996a3e6ac28"] *
        u[69]

    reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044 =
        p["reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044_mw4f6f44d9_408e_49b2_bedf_d34b2448725e"] *
        u[69]

    reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621 =
        p["reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621_mwd3e2533f_8d57_407c_834d_e0dde30b7f4a"] *
        u[70] -
        p["reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621_mwbd416b7b_f9b6_4464_b9e8_be4ac001d13d"] *
        u[68] *
        u[64]

    reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0 =
        p["reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0_mw64664eb9_353a_4f1d_a8dc_e22bcb06e2c2"] *
        u[67] *
        u[71] -
        p["reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0_mw0573df9d_f365_40b7_83d4_3846a05aefdc"] *
        u[72]

    reaction_mw5dcc8719_3180_4bd0_8797_08e256131961 =
        p["reaction_mw5dcc8719_3180_4bd0_8797_08e256131961_mw134431c3_e8e5_4375_89a0_2c51a03d65dd"] *
        u[72]

    reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b =
        p["reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b_mw22510791_ef7e_4373_907c_9eecbc8adda7"] *
        u[74] *
        u[73] -
        p["reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b_mwf59d397b_cfee_4a84_9279_134cc951db8c"] *
        u[75]

    reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef =
        p["reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef_mwe2aded94_f2b5_4513_8670_71a86abf7968"] *
        u[75] *
        u[76] -
        p["reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef_mw8d6eacb6_7184_4564_8cde_53e93add2146"] *
        u[77]

    reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa =
        p["reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa_mw3c3648cb_6d56_4d9d_be47_129483778fd6"] *
        u[77]

    reaction_mw31369230_1f14_45bd_be02_a44a275c6e31 =
        p["reaction_mw31369230_1f14_45bd_be02_a44a275c6e31_mw98405e53_330b_4a64_a700_a62bb3f21426"] *
        u[78] -
        p["reaction_mw31369230_1f14_45bd_be02_a44a275c6e31_mw11f8de84_6639_486d_bf17_8f7021f54b66"] *
        u[79] *
        u[76]

    reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6 =
        p["reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6_mw65e1222f_39ad_4a29_ae76_04b7d591af38"] *
        u[79] -
        p["reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6_mw11e520e6_b1f1_4802_af71_92a2bd9cb644"] *
        u[80] *
        u[73]

    reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc =
        p["reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc_mw6a4e035b_11a7_4155_9a78_cfba13631cb1"] *
        u[81]

    reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92 =
        p["reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92_mw6eebbe41_cf28_46e8_930c_26f50e08d602"] *
        u[82] -
        p["reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92_mw751c2663_d807_482f_991b_c8032cb6d996"] *
        u[74] *
        u[83]

    reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9 =
        p["reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9_mwd2d0b340_bbdb_40bd_9eac_992a2a402b94"] *
        u[80] *
        u[83] -
        p["reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9_mwb1b46773_a218_4f99_a000_a98fbc1275d7"] *
        u[81]

    reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371 =
        p["reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371_mw193f2553_1ab3_4b07_9b4b_201ee9e08c96"] *
        u[79] *
        u[83] -
        p["reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371_mwb7292ff5_dd13_41aa_b9b8_2c0c75d35fb1"] *
        u[84]

    reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b =
        p["reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b_mwf4069175_b898_4633_ac1e_20f44431c36a"] *
        u[84]

    reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e =
        p["reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e_mw6d852e8c_c64a_4926_80c4_781a9c04b20e"] *
        u[85] -
        p["reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e_mw4d614bfc_3e20_450e_8890_6326afd0a0d7"] *
        u[75] *
        u[83]

    reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5 =
        p["reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5_mw3676a900_b098_4a74_a511_e15984ca0cd2"] *
        u[78] *
        u[83] -
        p["reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5_mwf68a0726_94b5_4be1_933f_1ac48053601d"] *
        u[86]

    reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2 =
        p["reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2_mwb4f0353c_d140_44cc_ab75_566fcc2909c5"] *
        u[86]

    reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174 =
        p["reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174_mw6165953d_ce44_4b21_a18a_c401c04993f1"] *
        u[87] -
        p["reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174_mw99a30aef_212a_4577_bcfd_8c5764057cca"] *
        u[77] *
        u[83]

    reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f =
        p["reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f_mw94b0216f_3353_4b36_b9b7_fd34a0510b08"] *
        u88 *
        u[36] / (
            p["reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f_mw2034bbe7_27cc_410c_9870_1f8a5986dfa5"] +
            u[36]
        )

    reaction_mw62f71309_e066_47d2_9b99_01f78a51c218 =
        p["reaction_mw62f71309_e066_47d2_9b99_01f78a51c218_mw0cea56f3_1cdb_410e_a5a4_f3635ba5c94b"] *
        u[89]

    reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01 =
        p["reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01_mw50a0e884_a88c_46a7_b985_788868bc1029"] *
        u[5] *
        u[90] -
        p["reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01_mw2c88e0e2_e9c3_4e4c_bb2e_b0cd1f6420f4"] *
        u[91]

    reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a =
        p["reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a_mw95e2190d_8e39_419b_ad26_7cc141f7b87b"] *
        u[91]

    reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3 =
        p["reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3_mw76d68ace_272d_4178_bba2_74dfdf260c70"] *
        u[5] *
        u[92] -
        p["reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3_mwe37b936f_7781_4a01_b59b_96bd7db0c49e"] *
        u[93]

    reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618 =
        p["reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618_mwb6701ead_d3f2_4eb3_8b08_341cea49a4b2"] *
        u[92] *
        u[94] -
        p["reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618_mwa5016035_3f9f_44fc_9f69_1d7a0155eb36"] *
        u[95]

    reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0 =
        p["reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0_mw26164d03_adda_4a21_b5ac_59e1d5a8d8ab"] *
        u[95]

    reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735 =
        p["reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735_mw9fe16c2b_7271_4e4f_b6de_c149721a3198"] *
        u[92] *
        u[92] -
        p["reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735_mw74ea5b55_ead0_4b6f_8da0_fd1dcf7e231d"] *
        u[97]

    reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2 =
        p["reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2_mw8cbe6595_6f16_4704_afe2_0dd043a175fa"] *
        u[97] *
        u[94] -
        p["reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2_mw21d22acd_ddd4_4794_9700_52201984f75b"] *
        u[96]

    reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad =
        p["reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad_mw81384973_14a0_4498_ab21_f70666d46d7f"] *
        u[96]

    reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2 =
        p["reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2_mw9f1a7f64_0b37_42df_9dd5_e1a44efdcbba"] *
        u[90] *
        u[92] -
        p["reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2_mw366e6f17_4081_4cdc_9fa5_0aeb354d692c"] *
        u[98]

    reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690 =
        p["reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690_mw1df2caba_8e41_4fe5_a1b5_7777eb98ed1c"] *
        u[97]

    reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a =
        p["reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a_mw5a798f7a_b4eb_4a27_b413_4ff3956b90e9"] *
        u[100] *
        u[100] -
        p["reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a_mw54178365_18c1_47e0_94ee_6b96582c52ef"] *
        u[99]

    reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7 =
        p["reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7_mw1ff4e75e_fce5_4a7a_907b_05df4981f80b"] *
        u[99] *
        u[101] -
        p["reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7_mw8b269d52_eda9_4dd1_8616_ebcf29c971fa"] *
        u[102]

    reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c =
        p["reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c_mw90b25c4b_ad1a_4ee5_ae20_c60451484516"] *
        u[102]

    reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7 =
        p["reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7_mwa0806e7a_a90d_4187_9c37_6d9ea569a447"] *
        u[104] *
        u[100] -
        p["reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7_mw95cb9071_56e2_447d_b7c7_59ac96baa623"] *
        u[103]

    reaction_mw45d92b79_0656_4795_87d0_7a465949ca43 =
        p["reaction_mw45d92b79_0656_4795_87d0_7a465949ca43_mwba545ecf_c7d4_4a6c_8c47_9e91f052d5a9"] *
        u[100] *
        u[101] -
        p["reaction_mw45d92b79_0656_4795_87d0_7a465949ca43_mw01c5ceef_57a1_4baa_b2cd_fd39e9588a10"] *
        u[105]

    reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525 =
        p["reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525_mw7aba6db3_c7ec_4192_bb5e_0ac4b466c1a5"] *
        u[105]

    reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f =
        p["reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f_mw31eb851a_c381_419d_b694_f158b7f5cfb6"] *
        u[104]

    reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df =
        p["reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df_mwe09b67b9_0d2a_4b82_91ef_5284216beb94"] *
        u[91] *
        u[6] -
        p["reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df_mw77a6c207_ff8c_463c_9b4e_8a7d96652b79"] *
        u[106]

    reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e =
        p["reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e_mw1df53838_48e5_4331_9084_3790409ad5ff"] *
        u[106] *
        u[60] -
        p["reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e_mwe4573b2c_5f99_40d0_9f9e_c238caa5ccbe"] *
        u[107]

    reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19 =
        p["reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19_mw8ed5885f_774e_48a0_9338_fe8cdd512023"] *
        u[107]

    reaction_mwb205f533_4013_406b_8a4b_691ec3949555 =
        p["reaction_mwb205f533_4013_406b_8a4b_691ec3949555_mwa6ef5f75_f152_414d_811c_dd037d4b3ca1"] *
        u[65] *
        u[6] -
        p["reaction_mwb205f533_4013_406b_8a4b_691ec3949555_mwee51df1b_3f69_43f8_a1d5_5a8c5d0215f2"] *
        u[108]

    reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d =
        p["reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d_mw2e0b4751_7227_4815_bf6f_fa5e2370b1d3"] *
        u[108] *
        u[60] -
        p["reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d_mwa8eec8e9_74b9_4afc_b6db_1116fe48e858"] *
        u[109]

    reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99 =
        p["reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99_mwc3426c7e_3452_4507_9189_4b83ab147bdd"] *
        u[109]

    reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961 =
        p["reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961_mw9cafad09_6002_46e1_8336_bb91c3716d70"] *
        u[73]

    # Species:   id = mwe2fff28d_182c_4a1c_9882_f17774c0958a; name = EGF; affected by kineticLaw
    du[1] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) *
        ((-1.0 * reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12))

    # Species:   id = mw93907b2d_53db_4080_9e3f_3eb304441ab9; name = EGFR; affected by kineticLaw
    du[2] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12) +
            (1.0 * reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f)
        )

    # Species:   id = mw7eacabf9_d68c_491a_aba2_ec0809a8ecc8; name = EGF-EGFR; affected by kineticLaw
    du[3] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwa67e40c1_693d_4214_adc8_b2f2b71cef12) +
            (-1.0 * reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d) +
            (-1.0 * reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d)
        )

    # Species:   id = mwa8f2e7b2_0927_4ab4_a817_dddc43bb4fa3; name = EGF-EGFR2; affected by kineticLaw
    du[4] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw877cd1e3_b48b_42e8_ab23_682dd893fd9d) +
            (-1.0 * reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923) +
            (1.0 * reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335) +
            (1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) +
            (1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93) +
            (1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a)
        )

    # Species:   id = mwbfcf6773_1915_432c_b1d2_1f246094cc74; name = pEGF-EGFR2; affected by kineticLaw
    du[5] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw413c6d45_ab23_4d3e_87b3_a8ed4629b923) +
            (-1.0 * reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04) +
            (-1.0 * reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644) +
            (1.0 * reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe) +
            (-1.0 * reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61) +
            (-1.0 * reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd) +
            (-1.0 * reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c) +
            (1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) +
            (1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6) +
            (-1.0 * reaction_mw85e457d1_73f8_4236_bb61_a128d300003f) +
            (-1.0 * reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d) +
            (1.0 * reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8) +
            (-1.0 * reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01) +
            (1.0 * reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a) +
            (-1.0 * reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3)
        )

    # Species:   id = mw19122f7d_f92e_4dc0_922f_6b681db65b0b; name = cbl; affected by kineticLaw
    du[6] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b) +
            (1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657) +
            (-1.0 * reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4) +
            (1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314) +
            (-1.0 * reaction_mw85e457d1_73f8_4236_bb61_a128d300003f) +
            (1.0 * reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687) +
            (-1.0 * reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df) +
            (1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19) +
            (-1.0 * reaction_mwb205f533_4013_406b_8a4b_691ec3949555)
        )

    # Species:   id = mw3c2e1b43_29ca_491a_93e9_c723a993d6fb; name = Shc; affected by kineticLaw
    du[7] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04) +
            (1.0 * reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308) +
            (1.0 * reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28)
        )

    # Species:   id = mw5198d3c2_879c_4f0d_b4f8_cd40efe0b1cf; name = pEGF-EGFR2-Shc; affected by kineticLaw
    du[8] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwf61e086d_0345_4d4c_b91d_0b105e543d04) +
            (-1.0 * reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526)
        )

    # Species:   id = mwe57c3282_5935_405c_8c0b_7fadb7a5de17; name = SHP; affected by kineticLaw
    du[9] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644) +
            (1.0 * reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335) +
            (-1.0 * reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db) +
            (1.0 * reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308) +
            (-1.0 * reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2) +
            (1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) +
            (-1.0 * reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb) +
            (1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93) +
            (-1.0 * reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19) +
            (1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a)
        )

    # Species:   id = mw954e8fcb_ac0a_459d_8878_f19080208a17; name = pEGF-EGFR2-SHP2; affected by kineticLaw
    du[10] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw91f49311_efdc_47c6_b8b8_a619e042d644) +
            (-1.0 * reaction_mw9544e67b_b6d0_4941_b7e0_ecd4f400a335)
        )

    # Species:   id = mwa98802cb_c977_4fe0_9e67_5000904c2c36; name = pEGF-EGFR2-pShc; affected by kineticLaw
    du[11] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw974c39f5_b82e_44b3_abec_7a724f46c526) +
            (-1.0 * reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe) +
            (-1.0 * reaction_mw4817365e_a33b_451f_bee1_de748377ede2) +
            (-1.0 * reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc)
        )

    # Species:   id = mwa0349407_8187_48fc_9e94_5698ccc4e06d; name = pShc; affected by kineticLaw
    du[12] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw486c5261_3d03_4589_a1e9_978b62ad2dfe) +
            (-1.0 * reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db) +
            (-1.0 * reaction_mwd4bf58ea_70c9_43ea_a831_1fcde130ba28) +
            (1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) +
            (1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) +
            (1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657)
        )

    # Species:   id = mwf9999977_6f0e_4e35_9b73_75587f3448e9; name = pShc-SHP2; affected by kineticLaw
    du[13] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw2cf8a809_63d8_4717_91fc_070516e6f3db) +
            (-1.0 * reaction_mweda6a945_fb5d_4d99_9958_11b2b2840308)
        )

    # Species:   id = mwf430a579_ecbf_48ba_80c2_06e455808f2a; name = Grb2; affected by kineticLaw
    du[14] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw4817365e_a33b_451f_bee1_de748377ede2) +
            (1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6) +
            (-1.0 * reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a) +
            (-1.0 * reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61) +
            (1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93) +
            (1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) +
            (1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6)
        )

    # Species:   id = mw504578d8_96c3_471f_8a7e_8c14e7535d3d; name = pEGF-EGFR2-pShc-Grb2; affected by kineticLaw
    du[15] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw4817365e_a33b_451f_bee1_de748377ede2) +
            (-1.0 * reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2) +
            (-1.0 * reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3)
        )

    # Species:   id = mw45ab688a_6467_4a3e_a779_2118fa84d69e; name = pEGF-EGFR2-pShc-Grb2-SHP2; affected by kineticLaw
    du[16] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw03998474_934b_4e4a_8c0c_ca359e402ac2) +
            (-1.0 * reaction_mw7bb43f0a_c87e_41ff_8a43_cdf45c8f05e6)
        )

    # Species:   id = mw9dcaa655_a755_426e_a3fa_1ad7c3c45575; name = SOS; affected by kineticLaw
    du[17] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3) +
            (-1.0 * reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a) +
            (-1.0 * reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2) +
            (1.0 * reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4)
        )

    # Species:   id = mwfbda4e09_0cbb_49bc_ae69_f88b7a79ed21; name = pEGF-EGFR2-pShc-Grb2-SOS; affected by kineticLaw
    du[18] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwd9262331_e35a_4614_943a_89bcf8a492e3) +
            (1.0 * reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc) +
            (-1.0 * reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e) +
            (1.0 * reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d) +
            (-1.0 * reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c) +
            (-1.0 * reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b)
        )

    # Species:   id = mwb1bc2058_e6d8_4680_9e6c_d27bb366cde0; name = pEGF-EGFR2-pShc-Grb2-SOS-cbl; affected by kineticLaw
    du[19] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwbd8a133e_1b70_44e8_bef8_78b14141166b) +
            (-1.0 * reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630)
        )

    # Species:   id = mw1093b3af_1864_4ba3_a541_6009a9921282; name = Grb2-SOS; affected by kineticLaw
    du[20] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwc5f121dc_d27d_4c3d_90f2_67d0adaf144a) +
            (-1.0 * reaction_mw23a29b42_9813_4e46_b8ae_966e3215e6dc) +
            (-1.0 * reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd) +
            (1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657) +
            (1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314)
        )

    # Species:   id = mwd9462e5b_a272_4b66_ab66_fde9266b1a43; name = pEGF-EGFR2-Grb2; affected by kineticLaw
    du[21] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw0e459167_515b_4c4d_8b67_bf0a5b3e9d61) +
            (-1.0 * reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb) +
            (-1.0 * reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2)
        )

    # Species:   id = mw925b938a_fe73_4664_ba6f_e72e57780891; name = pEGF-EGFR2-Grb2-SHP2; affected by kineticLaw
    du[22] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwc52e0f9b_1e0c_46ca_8d18_f05ef4a080cb) +
            (-1.0 * reaction_mw4f89bf6c_8691_41a6_a1ac_13e6aa8c4b93)
        )

    # Species:   id = mwf8cc7834_bf4f_4ccd_8235_d0890badf0f6; name = pEGF-EGFR2-Grb2-SOS; affected by kineticLaw
    du[23] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw35f71989_f89b_4440_b1a4_ebc7b4cc18b2) +
            (1.0 * reaction_mwd0d92dd4_81b7_4385_bfd7_5de82e193ecd) +
            (1.0 * reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7) +
            (-1.0 * reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f) +
            (-1.0 * reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30) +
            (-1.0 * reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4)
        )

    # Species:   id = mw481cd12b_61ba_44e5_93bf_8b88c6c4a4e7; name = pEGF-EGFR2-Grb2-SOS-cbl; affected by kineticLaw
    du[24] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw6bee0112_92dc_4169_9109_2633772b3aa4) +
            (-1.0 * reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014)
        )

    # Species:   id = mw8f5a7b5c_ca4c_4a4c_85b1_e5d640c426bf; name = Ras-GDP; affected by kineticLaw
    du[25] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e) +
            (1.0 * reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89) +
            (-1.0 * reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f) +
            (1.0 * reaction_mwf31259aa_32b7_4104_be70_045297b9a512) +
            (1.0 * reaction_mw652570eb_c9d3_499b_b877_61d360b10980)
        )

    # Species:   id = mwf40d6176_abfc_4a30_886f_83a19fcffc48; name = pEGF-EGFR2-pShc-Grb2-SOS-Ras-GDP; affected by kineticLaw
    du[26] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwbb77e3d6_6065_4344_9361_e30c03514f4e) +
            (-1.0 * reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d)
        )

    # Species:   id = mwa54a9c38_c98b_45e5_8432_4119fb777e44; name = Ras-GTP; affected by kineticLaw
    du[27] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw921ee820_1dbb_4b5f_866c_87da620d8f89) +
            (1.0 * reaction_mw0bcfad86_59b9_42ff_bcb7_fbb44845049d) +
            (1.0 * reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7) +
            (-1.0 * reaction_mw3c617363_649b_4460_a694_36f7a3127a62) +
            (-1.0 * reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53) +
            (-1.0 * reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3) +
            (1.0 * reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca)
        )

    # Species:   id = mw28464aad_8013_4a23_ae09_a406954859a6; name = pEGF-EGFR2-Grb2-SOS-Ras-GDP; affected by kineticLaw
    du[28] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwe9b50ac7_dac3_4eba_b1db_b3fd392d8fb7) +
            (1.0 * reaction_mw934c3638_603e_4ff0_a763_68f9405fa01f)
        )

    # Species:   id = mw7cff9a0e_094d_498e_bf7f_7b162c61d63a; name = Ras-GAP; affected by kineticLaw
    du[29] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw3c617363_649b_4460_a694_36f7a3127a62) +
            (1.0 * reaction_mwf31259aa_32b7_4104_be70_045297b9a512) +
            (-1.0 * reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c) +
            (1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a)
        )

    # Species:   id = mwdf82303e_323f_4c51_a858_56a59233cd98; name = Ras-GTP-Ras-GAP; affected by kineticLaw
    du[30] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw3c617363_649b_4460_a694_36f7a3127a62) +
            (-1.0 * reaction_mwf31259aa_32b7_4104_be70_045297b9a512)
        )

    # Species:   id = mwd39388fd_4f85_4d1c_b2a3_37857c595a2d; name = pEGF-EGFR2-Ras-GAP; affected by kineticLaw
    du[31] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw0a51fbf0_409b_4b45_b4ac_0220af4c4e3c) +
            (-1.0 * reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53) +
            (1.0 * reaction_mw652570eb_c9d3_499b_b877_61d360b10980) +
            (-1.0 * reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19)
        )

    # Species:   id = mwd7bf31ba_b05c_4c45_bb2f_6a2468a2a507; name = pEGF-EGFR2-Ras-GAP-Ras-GTP; affected by kineticLaw
    du[32] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw33baddbd_a23f_45bb_b126_0ba60bbf6c53) +
            (-1.0 * reaction_mw652570eb_c9d3_499b_b877_61d360b10980)
        )

    # Species:   id = mwbf5cb039_b830_4282_aa22_a3dda6272ec1; name = pEGF-EGFR2-Ras-GAP-SHP2; affected by kineticLaw
    du[33] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwc5aae1f8_52e4_4bcd_b044_3768f90b7b19) +
            (-1.0 * reaction_mw642ac312_2ee7_4e66_8f3e_e2da2bb6412a)
        )

    # Species:   id = mw66ac98c4_7e7b_4071_954d_43eb17584220; name = Raf1; affected by kineticLaw
    du[34] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3) +
            (1.0 * reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d)
        )

    # Species:   id = mw83de7813_4941_45a6_a320_a551165bf22a; name = Raf1-Ras-GTP; affected by kineticLaw
    du[35] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw584a64d0_560a_4297_9882_80cb4eff73f3) +
            (-1.0 * reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca)
        )

    # Species:   id = mwaff92910_ed3d_40b9_a29c_e4866167e828; name = Raf1active; affected by kineticLaw
    du[36] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw42c97708_4f85_45a8_9141_d0ae529409ca) +
            (-1.0 * reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33) +
            (1.0 * reaction_mw1bd186cf_4762_480a_b70d_d7a775462398) +
            (-1.0 * reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2) +
            (1.0 * reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4) +
            (-1.0 * reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d) +
            (-1.0 * reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f) +
            (1.0 * reaction_mw62f71309_e066_47d2_9b99_01f78a51c218)
        )

    # Species:   id = mw0834731b_0477_4217_a53b_30cef851191b; name = MEK; affected by kineticLaw
    du[37] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33) +
            (1.0 * reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41)
        )

    # Species:   id = mw4628f984_eb87_4922_9760_4975095ce6eb; name = Raf1active-MEK; affected by kineticLaw
    du[38] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwaa65a34e_fabf_4d6d_ae0b_f1d08b068f33) +
            (-1.0 * reaction_mw1bd186cf_4762_480a_b70d_d7a775462398)
        )

    # Species:   id = mw9b25f809_18a1_4c14_8f4b_cf18e6d93c28; name = pMEK; affected by kineticLaw
    du[39] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw1bd186cf_4762_480a_b70d_d7a775462398) +
            (-1.0 * reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2) +
            (1.0 * reaction_mw40950d59_1012_4361_8418_73e25758e367) +
            (-1.0 * reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419)
        )

    # Species:   id = mw12ba4000_d452_420c_be63_96d2848aca32; name = Raf1active-pMEK; affected by kineticLaw
    du[40] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwf5573ddf_ad7f_478a_a784_557a9cddaaf2) +
            (-1.0 * reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4)
        )

    # Species:   id = mwf816df4c_4593_4d23_990f_0d7c15ddde5d; name = ppMEK; affected by kineticLaw
    du[41] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwb49058ff_2997_4187_abe7_4dce4ccf6ff4) +
            (-1.0 * reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe) +
            (1.0 * reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d) +
            (-1.0 * reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9) +
            (1.0 * reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b) +
            (-1.0 * reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b)
        )

    # Species:   id = mw7e23b961_186b_47a0_a8b5_5e9957766792; name = ERK; affected by kineticLaw
    du[42] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe) +
            (1.0 * reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252)
        )

    # Species:   id = mwcedf8ecd_67bd_4b91_aa04_d58782dec2a4; name = ppMEK-ERK; affected by kineticLaw
    du[43] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw8301b154_9463_4516_b4c5_c8f8b68691fe) +
            (-1.0 * reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d)
        )

    # Species:   id = mwcc894c94_0ddf_42cc_913e_cdcc4d471d94; name = pERK; affected by kineticLaw
    du[44] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwf95f743d_6108_49fe_8ffd_bdcc1a9f9a8d) +
            (-1.0 * reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9) +
            (1.0 * reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671) +
            (-1.0 * reaction_mw1d8c2435_bb85_4352_a25f_82033250579e)
        )

    # Species:   id = mw6cb74b27_ffef_49bb_8ffb_622d552caa9e; name = ppMEK-pERK; affected by kineticLaw
    du[45] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw51d9d6b8_f0c0_4763_9d11_9be61b5cf5c9) +
            (-1.0 * reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b)
        )

    # Species:   id = mwd784228d_0cb5_468a_ac70_02d8f04b3d9c; name = ppERK; affected by kineticLaw
    du[46] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw6fd24d16_f57d_46c6_82f5_3f00759fa16b) +
            (-1.0 * reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48) +
            (-1.0 * reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c) +
            (1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) +
            (-1.0 * reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30) +
            (1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6)
        )

    # Species:   id = mwbaaeb210_4806_4076_9d60_219f4ed945b6; name = Pase; affected by kineticLaw
    du[47] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d) +
            (1.0 * reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d)
        )

    # Species:   id = mw19a33ad5_5ba4_46c7_84eb_c1287f02bcd5; name = Raf1active-Pase; affected by kineticLaw
    du[48] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw9c208e18_c70d_4231_af0b_ad17cd0bba2d) +
            (-1.0 * reaction_mw87711dc1_43d7_40fc_b9e9_a24e2f92419d)
        )

    # Species:   id = mwf9e2a044_7774_400b_a74e_a111b4a21f30; name = Pase2; affected by kineticLaw
    du[49] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b) +
            (1.0 * reaction_mw40950d59_1012_4361_8418_73e25758e367) +
            (-1.0 * reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419) +
            (1.0 * reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41)
        )

    # Species:   id = mwcb572fe2_c3ac_40e7_8141_da7d55fce18a; name = ppMEK-Pase2; affected by kineticLaw
    du[50] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw4b445876_bdce_42d0_867b_fd3c74128a6b) +
            (-1.0 * reaction_mw40950d59_1012_4361_8418_73e25758e367)
        )

    # Species:   id = mwa0acc0ac_5fac_4a42_a3be_e36db44994b0; name = pMEK-Pase2; affected by kineticLaw
    du[51] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwbfa79c95_487d_4c6f_b437_9e579451a419) +
            (-1.0 * reaction_mwa4b69c77_6226_46da_b78c_3e6027d0be41)
        )

    # Species:   id = mwd087f76b_65dc_47f1_ba21_c43774457686; name = Pase3; affected by kineticLaw
    du[52] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48) +
            (1.0 * reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671) +
            (1.0 * reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252) +
            (-1.0 * reaction_mw1d8c2435_bb85_4352_a25f_82033250579e)
        )

    # Species:   id = mw35f5adaa_d1c0_433c_817d_76e317f4cb15; name = pERK-Pase3; affected by kineticLaw
    du[53] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwcc31b497_6c50_446c_bbc2_6c5739507252) +
            (1.0 * reaction_mw1d8c2435_bb85_4352_a25f_82033250579e)
        )

    # Species:   id = mwa7e3103a_6394_472c_b0f4_8ed527f68604; name = ppERK-Pase3; affected by kineticLaw
    du[54] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwf8bb22e2_5aa3_4c25_a022_a266b1856a48) +
            (-1.0 * reaction_mw61305f93_7b2d_4a2d_8d16_f7be026d8671)
        )

    # Species:   id = mw5babe3d5_a9af_4dfd_ac01_35474ef64af2; name = ppERK-pEGF-EGFR2-pShc-Grb2-SOS; affected by kineticLaw
    du[55] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw8dec1159_1925_45d9_af25_3cb709a5017c) +
            (-1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730)
        )

    # Species:   id = mw31ac308f_da36_4f73_830f_67f3e5b945d9; name = pSOS; affected by kineticLaw
    du[56] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwcf9f1b1d_e19a_4fa8_85ba_8f17e2cec730) +
            (1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6) +
            (-1.0 * reaction_mw8e331e43_16b4_478d_880b_d5a3244540e4)
        )

    # Species:   id = mw31261227_9cd6_4059_a0bb_04dbf4888080; name = ppERK-pEGF-EGFR2-Grb2-SOS; affected by kineticLaw
    du[57] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwa5c135b4_77e2_4411_98e1_2000c39d4b30) +
            (-1.0 * reaction_mw4685274a_2b55_429f_927f_3fd863592af6)
        )

    # Species:   id = mw0a0ca6ba_cb28_44c7_a0c0_1593cb720966; name = ProEGFR; affected by kineticLaw
    du[58] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) *
        ((-1.0 * reaction_mw47dee769_daa0_4af4_978a_5ab17e504c2f))

    # Species:   id = mw06b8aada_c92a_48eb_8ee7_af3778cfe62f; name = pEGF-EGFR2-pShc-Grb2-SOS-cbl-EPn; affected by kineticLaw
    du[59] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630) +
            (-1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657)
        )

    # Species:   id = mwb2366216_0b3c_4f28_8303_fec92c68dd57; name = EPn; affected by kineticLaw
    du[60] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw3a87ca5a_845d_4ac4_8806_e343cbbfc630) +
            (1.0 * reaction_mw363a5271_1f51_4d5e_87a7_42ea25cb5657) +
            (-1.0 * reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014) +
            (1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314) +
            (-1.0 * reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6) +
            (1.0 * reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687) +
            (-1.0 * reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e) +
            (1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19) +
            (-1.0 * reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d) +
            (1.0 * reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99)
        )

    # Species:   id = mw1d5948e7_5504_4224_9d71_227911b4f1ee; name = pEGF-EGFR2-Grb2-SOS-cbl-EPn; affected by kineticLaw
    du[61] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwbac9e6ff_2df1_45eb_b3f4_4cae74c64014) +
            (-1.0 * reaction_mweb93165f_cf03_48f1_b035_59d79e324314)
        )

    # Species:   id = mwec1b368b_8f73_47eb_9636_9956389836eb; name = pEGF-EGFR2-cbl; affected by kineticLaw
    du[62] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw85e457d1_73f8_4236_bb61_a128d300003f) +
            (-1.0 * reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6)
        )

    # Species:   id = mwa455ec7e_1a12_4659_95a2_a5695d09ca60; name = pEGF-EGFR2-cbl-EPn; affected by kineticLaw
    du[63] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw6b159c8f_eee0_4337_b711_2e230c9e2cf6) +
            (-1.0 * reaction_mwc9b3b248_3290_452a_9b7c_8fdada3e6687)
        )

    # Species:   id = mw2ba1db9a_4483_44fa_a3a2_b4a5ea66898c; name = PI3K; affected by kineticLaw
    du[64] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d) +
            (1.0 * reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621) +
            (1.0 * reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99)
        )

    # Species:   id = mw0dc4e5eb_4366_4799_bebc_cfcffe5c06f5; name = pEGF-EGFR2-PI3K; affected by kineticLaw
    du[65] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw77484632_4e33_468a_9937_24e9bfd0e17d) +
            (-1.0 * reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91) +
            (-1.0 * reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8) +
            (-1.0 * reaction_mwb205f533_4013_406b_8a4b_691ec3949555)
        )

    # Species:   id = mw1e591998_65c0_484e_8a3b_537a38d94de1; name = pEGF-EGFR2-pPI3K; affected by kineticLaw
    du[66] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) *
        ((1.0 * reaction_mw2c5858f3_0988_49b0_a94a_057853b84e91))

    # Species:   id = mw78e207c4_4faf_4b48_8e22_1ee666e9cc4c; name = pPI3K; affected by kineticLaw
    du[67] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwd3a36af9_3ccc_4bb1_9867_3b9823ba4ac8) +
            (-1.0 * reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31) +
            (-1.0 * reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0) +
            (1.0 * reaction_mw5dcc8719_3180_4bd0_8797_08e256131961)
        )

    # Species:   id = mwfc4a9c3d_3ebb_4033_8b7d_f4d7613d2078; name = TP4; affected by kineticLaw
    du[68] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31) +
            (1.0 * reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621)
        )

    # Species:   id = mwbd6bb050_89bd_41df_8cea_d2e1fb77bafe; name = TP4-pPI3K; affected by kineticLaw
    du[69] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw9f000f29_2512_4d4a_9dd9_e59aaf296d31) +
            (-1.0 * reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044)
        )

    # Species:   id = mw7033dfd6_53c5_433b_a132_f8cb34dea20f; name = TP4-PI3K; affected by kineticLaw
    du[70] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw837b5ad7_4a8c_4c55_94ff_0fdd63048044) +
            (-1.0 * reaction_mwd15926b3_069a_4b16_a6fc_c0c15083d621)
        )

    # Species:   id = mwb561d9f3_a9ed_4bdb_8d40_87be5cc3237a; name = PIP2; affected by kineticLaw
    du[71] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0) +
            (1.0 * reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961)
        )

    # Species:   id = mw014cc419_b720_4b90_9192_2ec6e706c87d; name = pPI3K-PIP2; affected by kineticLaw
    du[72] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw3a5e0932_d50f_4fe6_b8cb_0ad649f305b0) +
            (-1.0 * reaction_mw5dcc8719_3180_4bd0_8797_08e256131961)
        )

    # Species:   id = mwd7f41594_8377_4e2e_9528_45d5a82ffdb4; name = PIP3; affected by kineticLaw
    du[73] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw5dcc8719_3180_4bd0_8797_08e256131961) +
            (-1.0 * reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b) +
            (1.0 * reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6) +
            (-1.0 * reaction_mw4fceada8_6eb0_4230_a083_b2ab094d2961)
        )

    # Species:   id = mwcef73e0e_d195_4077_ae71_723664ee1602; name = Akt; affected by kineticLaw
    du[74] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b) +
            (1.0 * reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92)
        )

    # Species:   id = mw62bf5275_ce02_4e86_b3b6_3f87a335e1de; name = Aktm; affected by kineticLaw
    du[75] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw376b0685_ef73_4fcc_94af_2ada24cf8a8b) +
            (-1.0 * reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef) +
            (1.0 * reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e)
        )

    # Species:   id = mw6e01967b_3e2a_433d_bec6_9f9cf3ba243c; name = PDK1; affected by kineticLaw
    du[76] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef) +
            (1.0 * reaction_mw31369230_1f14_45bd_be02_a44a275c6e31)
        )

    # Species:   id = mw6353aa36_d4a4_4254_8a1f_1f7f571d4233; name = Aktm-PDK1; affected by kineticLaw
    du[77] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwcc7cfa9c_4945_403a_938e_b237c371a5ef) +
            (-1.0 * reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa) +
            (1.0 * reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174)
        )

    # Species:   id = mwc1935afc_56b1_4a87_923c_ae6d82455d80; name = pAktm-PDK1; affected by kineticLaw
    du[78] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw98da32e0_b061_40c5_9d32_40744134f3fa) +
            (-1.0 * reaction_mw31369230_1f14_45bd_be02_a44a275c6e31) +
            (-1.0 * reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5)
        )

    # Species:   id = mw3d81860d_d786_4fcc_b8bb_64f1a2d7739d; name = pAktm; affected by kineticLaw
    du[79] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw31369230_1f14_45bd_be02_a44a275c6e31) +
            (-1.0 * reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6) +
            (-1.0 * reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371)
        )

    # Species:   id = mw16796ffe_4764_4a9f_942e_149f42c1cd28; name = pAkt; affected by kineticLaw
    du[80] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw12311a84_3f8d_40c6_8b14_961a8a58d1b6) +
            (-1.0 * reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9)
        )

    # Species:   id = mwa6e82fc9_a0ce_461c_93c8_17f3c807c1a1; name = pAkt-Takt; affected by kineticLaw
    du[81] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc) +
            (1.0 * reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9)
        )

    # Species:   id = mw236a3250_4c96_4f6e_b94c_ab3d12852801; name = Akt-Takt; affected by kineticLaw
    du[82] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwf3d393e9_ae09_4eab_a39a_ed0eef0f54bc) +
            (-1.0 * reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92)
        )

    # Species:   id = mw11a8b702_b8ac_4513_b4aa_063e51089812; name = Takt; affected by kineticLaw
    du[83] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw2698f402_d00b_451e_8b22_93a322fe9a92) +
            (-1.0 * reaction_mw028e8b3e_b531_4466_9c3a_e3fcf7fc9be9) +
            (-1.0 * reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371) +
            (1.0 * reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e) +
            (-1.0 * reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5) +
            (1.0 * reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174)
        )

    # Species:   id = mw1a0cb97a_b657_430b_963c_92217f643081; name = pAktm-Takt; affected by kineticLaw
    du[84] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwc5e0c166_6a3a_4913_9ed1_dafe97bdb371) +
            (-1.0 * reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b)
        )

    # Species:   id = mw9b937ca3_0d82_46d5_8f5a_0f9701002797; name = Aktm-Takt; affected by kineticLaw
    du[85] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw94b3bae0_4da9_4358_a5ac_a46a5cbf621b) +
            (-1.0 * reaction_mw362ca1b3_224a_42fb_a14b_6ff467748a5e)
        )

    # Species:   id = mw57a44eb0_ace7_4294_905a_219e87d3c281; name = pAktm-PDK1-Takt; affected by kineticLaw
    du[86] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw3994e898_7232_4b70_9c58_b3476e8655f5) +
            (-1.0 * reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2)
        )

    # Species:   id = mwd746a5d5_5e65_4a4c_9f84_0e4a3cb7d2fc; name = Aktm-PDK1-Takt; affected by kineticLaw
    du[87] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw75acd2d1_3fdf_4c3f_8d99_6d62f825d5e2) +
            (-1.0 * reaction_mw4a334f7d_9bce_4690_b623_a427ed66a174)
        )

    # Species:   id = mwa6994523_5d45_4000_af0c_3e94073bf183, name = pAkt_total, defined in a rule 	du[88] = u[88]

    # Species:   id = mwdf92bdc0_f426_45b0_9ad0_876521f41312; name = pRaf1active; affected by kineticLaw
    du[89] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw950485f2_4463_4309_a4e4_cc81d16ffb7f) +
            (-1.0 * reaction_mw62f71309_e066_47d2_9b99_01f78a51c218)
        )

    # Species:   id = mw13abe2a6_9905_40e5_8c23_3fc8834b572a; name = STAT3c; affected by kineticLaw
    du[90] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01) +
            (1.0 * reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0) +
            (-1.0 * reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2) +
            (1.0 * reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f) +
            (1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19)
        )

    # Species:   id = mw2fd710a6_7fe2_4484_bca6_59c187bade8b; name = pEGF-EGFR2-STAT3c; affected by kineticLaw
    du[91] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwe8647e48_f4a9_40f4_9b32_f89ded572e01) +
            (-1.0 * reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a) +
            (-1.0 * reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df)
        )

    # Species:   id = mwb6a9aa2c_62e7_410f_9c33_dbe36dfcc4af; name = pSTAT3c; affected by kineticLaw
    du[92] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw65b9e026_bc6c_4c94_8b37_8b9acdf50c8a) +
            (-1.0 * reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3) +
            (-1.0 * reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618) +
            (-1.0 * reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735) +
            (-1.0 * reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735) +
            (-1.0 * reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2)
        )

    # Species:   id = mw341082a0_8017_4cc7_9d00_b1211a196072; name = pEGF-EGFR2-pSTAT3c; affected by kineticLaw
    du[93] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) *
        ((1.0 * reaction_mw1c9d29fa_bff4_4d2f_9d5f_f1791e4882a3))

    # Species:   id = mwcea1f1c1_2f85_4af1_98ea_ef14cf580c09; name = PP1; affected by kineticLaw
    du[94] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618) +
            (1.0 * reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0) +
            (-1.0 * reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2) +
            (1.0 * reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad)
        )

    # Species:   id = mwdc34472c_a6f9_4002_951d_e0e8da64eb42; name = pSTAT3c-PP1; affected by kineticLaw
    du[95] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwad97bd5a_3dae_49d9_990b_2e6574740618) +
            (-1.0 * reaction_mwe9988e4a_083c_4f8e_b154_3e599c9307b0)
        )

    # Species:   id = mw472d5cb9_120e_4f60_bbae_1ae2552837dd; name = pSTAT3c-pSTAT3c-PP1; affected by kineticLaw
    du[96] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2) +
            (-1.0 * reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad)
        )

    # Species:   id = mw4f575c55_7dff_45d7_94ad_cda9621d5b63; name = pSTAT3c-pSTAT3c; affected by kineticLaw
    du[97] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwf8bacf1a_6c1a_49b6_b344_2d3bd404a735) +
            (-1.0 * reaction_mwc9b945cf_3a14_4bd9_b253_7064498c75e2) +
            (-1.0 * reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690)
        )

    # Species:   id = mwd2c465fb_eea7_499a_8ea4_f318a64cb9ee; name = STAT3c-pSTAT3c; affected by kineticLaw
    du[98] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw75c6078f_fb76_4ca9_9fdd_e221e3ba57ad) +
            (1.0 * reaction_mw177fa7b0_f0be_4c3e_8b47_2ac4e13159a2)
        )

    # Species:   id = mw4110f531_7513_4786_8896_7c9d969ff558; name = pSTAT3n-pSTAT3n; affected by kineticLaw
    du[99] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwec4127b5_6bcf_4128_aff4_a6b3c470f690) +
            (1.0 * reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a) +
            (-1.0 * reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7)
        )

    # Species:   id = mwe3fd7f65_b0d1_44d9_b6f3_d2f7d332f664; name = pSTAT3n; affected by kineticLaw
    du[100] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a) +
            (-1.0 * reaction_mw5c806b00_59a1_491e_99a1_2c932b2d5d7a) +
            (-1.0 * reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7) +
            (-1.0 * reaction_mw45d92b79_0656_4795_87d0_7a465949ca43)
        )

    # Species:   id = mw0e1be972_fded_4bff_a93d_091ec942485f; name = PP2; affected by kineticLaw
    du[101] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7) +
            (1.0 * reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c) +
            (-1.0 * reaction_mw45d92b79_0656_4795_87d0_7a465949ca43) +
            (1.0 * reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525)
        )

    # Species:   id = mw0facb8f2_95cf_4ddf_a959_b24ba64f320b; name = pSTAT3n-pSTAT3n-PP2; affected by kineticLaw
    du[102] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw26fdabae_323b_4a78_b134_4c2eb70ea6a7) +
            (-1.0 * reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c)
        )

    # Species:   id = mw9686f53e_d343_45fd_b441_9c992219546a; name = STAT3n-pSTAT3n; affected by kineticLaw
    du[103] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw3b0c171c_6d60_41ca_8193_83cd5e6c188c) +
            (1.0 * reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7)
        )

    # Species:   id = mw960bddeb_e567_46dd_b2f3_ed5e6a5c7972; name = STAT3n; affected by kineticLaw
    du[104] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (-1.0 * reaction_mwc38a99c8_74cf_49f2_a16b_f6610ca1a0a7) +
            (1.0 * reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525) +
            (-1.0 * reaction_mwd189238c_e8f9_40be_b4ea_18a42bba1b4f)
        )

    # Species:   id = mw8c85ff7f_6368_4b11_a2ed_ce83481b55e6; name = pSTAT3n-PP2; affected by kineticLaw
    du[105] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw45d92b79_0656_4795_87d0_7a465949ca43) +
            (-1.0 * reaction_mwb71945c2_03a8_4fad_a995_e1caeee98525)
        )

    # Species:   id = mw548c81c2_c626_4df8_9177_a1a6fc3d4ce8; name = pEGF-EGFR2-STAT3c-cbl; affected by kineticLaw
    du[106] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwcb637bf1_7618_4d8a_ab5c_399145ecf1df) +
            (-1.0 * reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e)
        )

    # Species:   id = mw142e6dc4_ec15_459d_a184_6b20be04f08d; name = pEGF-EGFR2-STAT3c-cbl-EPn; affected by kineticLaw
    du[107] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw401dde7e_c0a1_4780_b6cc_8f98681c862e) +
            (-1.0 * reaction_mw0dd5a91d_d76c_494e_9dd6_57f2836aaa19)
        )

    # Species:   id = mw2c47ae3f_06d9_40ec_a252_535db0ae5caa; name = pEGF-EGFR2-PI3K-cbl; affected by kineticLaw
    du[108] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mwb205f533_4013_406b_8a4b_691ec3949555) +
            (-1.0 * reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d)
        )

    # Species:   id = mwd32d108b_49c2_4df2_9b67_d6c6b84f54b9; name = pEGF-EGFR2-PI3K-cbl-EPn; affected by kineticLaw
    du[109] =
        (1 / (p["compartment_mw1637dd35_5f09_4a8d_bb7f_58717cdf1612"])) * (
            (1.0 * reaction_mw602726ea_89ee_41b8_bda6_e2811bb42c1d) +
            (-1.0 * reaction_mwfab3a9ec_b094_44f0_bd59_12ac56ca1c99)
        )

end

# u0 = fill!(Array{Num}(undef, N), 0)
begin
    u0 = zeros(109)
    u0[1] = 0.0081967
    u0[2] = 0.3
    u0[3] = 0.0
    u0[4] = 0.0
    u0[5] = 0.0
    u0[6] = 0.8
    u0[7] = 1.0
    u0[8] = 0.0
    u0[9] = 0.1
    u0[10] = 0.0
    u0[11] = 0.0
    u0[12] = 0.0
    u0[13] = 0.0
    u0[14] = 1.0
    u0[15] = 0.0
    u0[16] = 0.0
    u0[17] = 0.3
    u0[18] = 0.0
    u0[19] = 0.0
    u0[20] = 0.0
    u0[21] = 0.0
    u0[22] = 0.0
    u0[23] = 0.0
    u0[24] = 0.0
    u0[25] = 0.15
    u0[26] = 0.0
    u0[27] = 0.0
    u0[28] = 0.0
    u0[29] = 0.1
    u0[30] = 0.0
    u0[31] = 0.0
    u0[32] = 0.0
    u0[33] = 0.0
    u0[34] = 0.5
    u0[35] = 0.0
    u0[36] = 0.0
    u0[37] = 0.68
    u0[38] = 0.0
    u0[39] = 0.0
    u0[40] = 0.0
    u0[41] = 0.0
    u0[42] = 0.4
    u0[43] = 0.0
    u0[44] = 0.0
    u0[45] = 0.0
    u0[46] = 0.0
    u0[47] = 0.5
    u0[48] = 0.0
    u0[49] = 0.02
    u0[50] = 0.0
    u0[51] = 0.0
    u0[52] = 0.002
    u0[53] = 0.0
    u0[54] = 0.0
    u0[55] = 0.0
    u0[56] = 0.0
    u0[57] = 0.0
    u0[58] = 1.0
    u0[59] = 0.0
    u0[60] = 0.5
    u0[61] = 0.0
    u0[62] = 0.0
    u0[63] = 0.0
    u0[64] = 0.2
    u0[65] = 0.0
    u0[66] = 0.0
    u0[67] = 0.0
    u0[68] = 0.2
    u0[69] = 0.0
    u0[70] = 0.0
    u0[71] = 0.5
    u0[72] = 0.0
    u0[73] = 0.0
    u0[74] = 0.1
    u0[75] = 0.0
    u0[76] = 0.1
    u0[77] = 0.0
    u0[78] = 0.0
    u0[79] = 0.0
    u0[80] = 0.0
    u0[81] = 0.0
    u0[82] = 0.0
    u0[83] = 0.1
    u0[84] = 0.0
    u0[85] = 0.0
    u0[86] = 0.0
    u0[87] = 0.0
    u0[88] = 0.0
    u0[89] = 0.0
    u0[90] = 1.0
    u0[91] = 0.0
    u0[92] = 0.0
    u0[93] = 0.0
    u0[94] = 0.5
    u0[95] = 0.0
    u0[96] = 0.0
    u0[97] = 0.0
    u0[98] = 0.0
    u0[99] = 0.0
    u0[100] = 0.0
    u0[101] = 0.6
    u0[102] = 0.0
    u0[103] = 0.0
    u0[104] = 0.0
    u0[105] = 0.0
    u0[106] = 0.0
    u0[107] = 0.0
    u0[108] = 0.0
    u0[109] = 0.0
end

tspan = (0.0, 60.0)

prob = ODEProblem{true,SciMLBase.FullSpecialize}(sbml_model!, u0, tspan, par)

prob, oprob = AMF.generate_trig_amf_prob(prob)

solver_options = (; linsolve = GenericFactorization(AMF.factorize_scimlop))

@time sol = solve(prob, KenCarp4(; solver_options...));
sol.destats

@time sol = solve(prob, ROS34PW1a(; solver_options...), abstol = 1e-12, reltol = 1e-12)
sol.destats

using BenchmarkTools

@benchmark solve($prob, ROS34PW1a(; solver_options...))

oprob = ODEProblem(
    ODEFunction(sys_prob.f.f; jac = fjac),
    sys_prob.u0,
    sys_prob.tspan,
    sys_prob.p,
)


@time osol = solve(oprob, KenCarp4());
osol.destats

@time osol = solve(oprob, ROS34PW1a(), abstol = 1e-12, reltol = 1e-12)
osol.destats


@benchmark solve($oprob, ROS34PW1a())



## Fixed Time steps

using BenchmarkTools

@benchmark sol = solve(prob, ROS34PW1a(; solver_options...), dt = 1e-1, adaptive = false)
## 67 ms

@benchmark osol = solve(oprob, ROS34PW1a(), dt = 1e-1, adaptive = false)
## 87 ms
