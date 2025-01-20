import 'package:flutter/material.dart';
import 'package:netflix_demo/netflix_model.dart';

class NetflixShows extends StatefulWidget{
  const NetflixShows({super.key});
  @override
  State<NetflixShows> createState() => _NetflixDemo();
}

class _NetflixDemo extends State<NetflixShows>{

  List<NetflixCard> cardList1=[
    NetflixCard(image: "https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSnq-f_JS2Pl1RmFj2EvrdF4ZPD6ynaFTJTzFqHYdptj1rOTFXoLO7YfhlFUasCekaH-B0kH1Ie2k9ZpTCsoqxCCQ3TH1SApyskx3qBgmkMog0i_NR7zksy0pCnj5vCQAQj4feSgTE3YqBKE_nwOHDbnpjLVUd6DtgoRONSpV2yLSZqia8PSBJ8xi7wQlKzExsfjtoehvUiOXZDr9XVsqHTdqhSgYXwvAsMG01VJityzmYVnjNrdadYsK9LqRwp3-8fZpagSqFA5uuPuJ46JQbCJwyuo87wvrmarVXQwIsqJnP__AiwHmdr0i50_8qk4w87GNagJe0THWJWe_qex6Rd3rG7luu44TVuH9BJaqLU73EX3NBI.jpg?r=878", 
      name: "Sector 36"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABeFTb-F5Ct-CWpn96VQyLRzdtXAiyV9xGURJHYsYfnsaC9Eb6juDx0XwL6mHCdHzgyHSnlkA9SEwRIfYOLfegl06jvG6ZW55diah-phtzbIuc3QAHWW5_NL4zKOmP8MvvUjZd_cv8djc1hnXmJYTvHjdcKoFjEiPkRqqDDis2VSrkVLbXcJ_1TyVzSlXnPHx3udXzpIrJ-SJ9jZ761i73k0O_de_yIdIhL_CF8qnNRZ84Vqr_ugRAefDeaBzurMzFRG4cYS16zkAy8Ud8YOCoLuULh8maMDJtHpHAAzLWJtJsUd0CKxwDFLwIDanvmBg2Uvt_TYcHjeOu98JkjBywBMnUQfR1Jhufn7ytcNPA3ylAQ.jpg?r=02f", 
      name: "Fabulous Lives of Bollywood Wives"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUH8NFZMMoPr4JHVJVTz0t8ZY3IKkRwitkL5wRWonK7zgc8Olm1rho7z8f0uIzkMcZmi6R8G4JLil1c3qM4UhfZ2EeRvrRGxkyX7vzbu4dynk5YVXTd4LUbrEeNsr7sSySHG.jpg?r=66f", 
      name: "Heeramandi"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZRAlQ7Jlkc7e84ABWXduW-FqWelwec7UVsMDsQIM2vICPYmwMzfF7-4dWDVv0Kyo0XWEKRJGvig6KgRErjUjCWRzbXGyrV2t2cC3L6ubH9qHx5T-c1l4TbphF1WqN2yLMG4SdSAHantkHfXhTkmYk6vyXXb54G24yoFZifkzx9km1pr3NE4wXOdaPOtwZg.jpg?r=533", 
      name: "IC 814"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdV3r-jfpUMSUVmYAEMFJe6YhtT_LampzHg3vot8rbAcQyhQ5d3mGiqKT98bJlQaea0zvia3ujMfKRsMG94i-Oo5ukGr5SnBw2I7K6D8zs4-KwAM97VPudakWhxwDazCrECd6KyYrET70ok653F057uufwVQwE4AjPZPcOU103BqiHhALF2iiuFsWcaYPwLnw8Vrfc6c1k-s7RQ4sNsV8mSD_Gb5kyhIiNeZz0e30m_wvPTFOsi3Q2pFbLSILZ1sJrpNKB0txLH_8_dpH9l2jkTWBAe5Yyi8upqvxLWVSCkdF24zB2aflOsz1WEcJ6Xtahl17NOXlPWmKkzkFx2wDQnrpBQs4s1klAglD8l9qi_N1dvOvVdlzL5jDf1_Nsbk8goHtKu4angm-qbkyRgnB8T8xTf0T5kC3qF8hA9GuJecyYeyu3Pst-og_Jo0qKVSdgAjXoaEkU1Fl6fbq_XZL3wyyZ000Ot_vlZ93U_UlVJmEVevYgLn_oJUIAkxywBHzFY.jpg?r=910", 
      name: "The Great Indian Kapil Show"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABeDT1FlJlXqkqQCwJ2KdvTiIOIB_VPByvuDZ3EDuZZwFODY9WcKWgOz61ycu3Rm5SffwmK_QRUJCdZKTMH32UtgB1CQ9Ltae7XLsx2KQsYde9XkeOIR0RHDv6mjD-NlK2oKD.jpg?r=5da", 
      name: "The Railway Men"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWAVGFfEl7mEUzWeK2xPvetl8dlyt2OJLpPU_lANWZ5LFhXwqNj9iiTdFMHxTbnEE1eptplcseTIbJcZLZ_txPBO5fyj18lpmTIP7kls5ovxpWgkHW9hDBhsykibYrBqsyQZ.jpg?r=df2", 
      name: "She"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABauvbD00k2MNXgJZFAfyb5yCUXns39H1htXjU3uQINQFAv6amT_mAfXxkZPQwxACMVvLic7iq4pjUPA_yYAGydl0ZYwZE_JGHnY9N0UY1I35Raj7m5FryVgiTYQ5_xSjj6KV.jpg?r=e5a", 
      name: "CAT"),
  ];

  List<NetflixCard> cardList2=[
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUwGpM1WWP-zduJBUdpJliDHo3kDBC1C8Aspw_b78_rRSxdiudPxJBTitqsjfelXbS_2iRLqa4pqbGGxDCVvJrFqbw1oFA3KC1BHAq_j-fKblNkhrI9Po1LYxRsqdl5WpJuojdi7Kp55b9mIXmKxqpuVex1lhlty13vCUTw1PYT4dTtZk8J3PUEOXBgKQAWTJBbP3gQlaLg9YuN-8EbUwKipbO98BqHJ5Kl3a6dbhOI1rHrPaILfLkYrdmkzKkXW6EgiKB_kwvMc3-iipj2llJqDEOqP0YCQdHm1JpLz7zDkYN7ZZwFGk49Ovq5_8h09HKaQPRfwjBNdgtwJWTFeGVsQuJWIvgq7jamuhthVG-MKcG36daORx4hUsvYoi-2CMyx2-iJrFPZP4Jea0B5_8zUNXS4FftodmwJ3f8x8mqlIn7pUcuN8KMVu61q33y_sDbeyE2Dr.jpg?r=c18", 
      name: "Love Next Door"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVOtMelnp5zq5dhD28ZWxmxMUbij22WoPh3_Mjbbn_RmtdWzRLj4XSMetDsmYcHWFyQTjTTSXl5Bt3bFinGdJCUTX8ySMEPAjgw.jpg?r=c6c", 
      name: "True Beauty"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcg9TuSaELytTMpfLNBbxPokSI47FYpoWXi2vbAvluwsIXZAQ_M2mBc6BoAfjahHiZGrJzGmCwBxfwNG_JYhQZ7Q5O_5UjdousyT7iLkqOFlzgNy1L2hZNDEeYKXfYw-GOw9.jpg?r=b69", 
      name: "King the Land"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQDpT6t8mS6Bent2_DvrUxLtm_sov8E2N7qazbGw6iISJLJh1LnGOJKOzi6fY5gxCqzu8tmDIKZ3I3Po5e6jKRYjIC2N1Ahs76BHqWgeTUV-3JNMvKwq1KfxjoW3E48X3LZe.jpg?r=44c", 
      name: "My Demon"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSitjBhxTkmKXKaLTESIa5iQ58nAyggjQUOYupjSwRe4gUR-_YAITsOHD6tTTZNuBfh0ssBesZYcvf9X7kTOjYj9LklBcD2gEr8rFmNxUtSBec4jGBl4Faf5hCl09TqioZr0.jpg?r=c8b", 
      name: "Vincenzo"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa6R0zawmvBIlpRMxH9N2cD-aKWcmyqM8q3d_u41QnzVuaTgU8vxi1cWa4Q5oLSVCRjVDIoC0opTfZO_s-hyMzZl1_8PGK449ohLgy9CvPNXpKKkgCeta667RBPXODjZ2UWr.jpg?r=095", 
      name: "Business Proposal"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSgNtIRWmeIwXOEHLumBZ7V4pkmUV_ZkYcRQMi-VYkIWxfjQkMl5_5cKukdsTlmGh0SMPJWMQKgQfLF4YOOH0ISgiWUsyh5p3q7SP9un6j0pJXmDI0-ITIarb15EDZPgVQHD.jpg?r=853", 
      name: "Squid Game"),
  ];

  List<NetflixCard> cardList3=[
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABft5e2XOJjEERI2HAbQ84meihgug0Gzib3cm8HAmmUgmlJoaPsay7TIZnnXhIhYtmsRtu24QNzwZhFuGzDYDxJrBHOHeNW7m4ZrrtjM0-X2xiMr44C-WMEvXF3sh8-LYU50xiqouVcjxuroGpvLgEGY3a0Olnsl_vQKGpUc0-adqg75p_tDmYxqWqGetlsp9f5CT16fZ8O2j8kz7zvUrSLgtKvjv6pN5u2cvTh3ACuij-vrWeP6xdd8ai6RpT1uoKN4LUFSSN8R3GiQctCsMDCh0H3DeViXbM00xgqLA8eqwdAJR4Jc73xbTEfKX_xlRNlr8KCO3tWbCCMFmcCRTZiaHx7IrMiufZZaIr-l0RFA11A.jpg?r=b13", 
      name: "The Lincoln Lawyer"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc_QuOdHzJa9WwBiBlfEvpcFRKq9TAIgdJv0KoSilQZ8JMEsdCdQS4VGD6gwVg2CYCYNhTJIald5uVsXbMf-3QaF1k1fnFRbovQr6ddWUtkSOUzil_dtlD1wOIeD_pSI6pAx.jpg?r=c68", 
      name: "Stanger Things"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdzLf-Q3OK2H03_O-TYenAtdtgEP9kHEK4Wov-JlvcJNPMiTwFtyZQ_eJ8yMtVrYzoc6mSbEyFAgqu9z-5P0-htUTbfc1AMpCtffuTkpgSJ_c8nM2GKlmkpcEHqoMsmfAmDY.jpg?r=501", 
      name: "Lucifer"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVuhqH5tvREn_CdDZ0Hd_h_2U1CNDHNnv_Y7deTApe81b1sei7C7MKvK4gWMpamlSXvo8AIIS5m94R6hwfQapa0x3fwvRPingY5u-pIbsGriC1xqthXsNZ0Wjaq-LdTJd6Bk.jpg?r=152", 
      name: "Lost in Space"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVTS9jkSN0OtsYS0U6jF_uh6BOpNtaaFBOcANAVgIYKakmHDM4c9-CR14qb6oL3_gwX-Fr1m-RcTs3oAwg4eKuotVSwJ3Knca17b3_sEiYPm2OnkDBaKIGqIz5ZLAcjlUyESM7PZ7aO5_M_uVy2J0jcAzSYKMJO27JnyI2CE99DK7u52WlMz4aUHEZSR6mdjhLRwEvJzCDOeFVzHiP901RrCPxbnNvNTllcxbXBsqcRSBwN96rykLzO1BEbG3ErXWAalIS4kjtnYPEKaK0MwAEgvD2Oing6DVvCuMEbYo-xdgM6zk-qW_MIXrMlvGliuBNo5Y96U5HpjDxf9uHKX_7WlEgnCR9erIg-3nb6hb3gYSvjKkPE.jpg?r=9f0", 
      name: "Beauty in Black"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABYnBzy0Gz2LIWF3OysrVGXnFh6H9xw_NmJbLzU4asWItKFHODifqa3p9_Weu8VDHx3QZsVNa_xDGOfDNpEbi17sVsW3o_kXxT1wMjk7LY7O-k9OH6wHoxqQzoiMtmaTjQuvy.jpg?r=5c6", 
      name: "Narcos"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABakcN5lp8yI5Q_kCEPp9PY6EujDSHeTbOnthkurwQRQoveSwla-vxVDV6UsEQX7Cdw2UuLesPXL308jjM3UPwqz5yYgrMRMbjrQ.jpg?r=085", 
      name: "Monk"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZrMLnw8WE5hCJsepUt8asAgLAOczm8tGn3WGO3OvnZengYhUh7ZT3tncJ9z00fK6zlch9fBhVMKHQI77cCFiCHmxTQEDwpjuUBNiEzyxgCrRXNDQtECKDbrH5pR5s5oagYG.jpg?r=488", 
      name: "Manifest"),
  ];

  List<NetflixCard> cardList4=[
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdV3r-jfpUMSUVmYAEMFJe6YhtT_LampzHg3vot8rbAcQyhQ5d3mGiqKT98bJlQaea0zvia3ujMfKRsMG94i-Oo5ukGr5SnBw2I7K6D8zs4-KwAM97VPudakWhxwDazCrECd6KyYrET70ok653F057uufwVQwE4AjPZPcOU103BqiHhALF2iiuFsWcaYPwLnw8Vrfc6c1k-s7RQ4sNsV8mSD_Gb5kyhIiNeZz0e30m_wvPTFOsi3Q2pFbLSILZ1sJrpNKB0txLH_8_dpH9l2jkTWBAe5Yyi8upqvxLWVSCkdF24zB2aflOsz1WEcJ6Xtahl17NOXlPWmKkzkFx2wDQnrpBQs4s1klAglD8l9qi_N1dvOvVdlzL5jDf1_Nsbk8goHtKu4angm-qbkyRgnB8T8xTf0T5kC3qF8hA9GuJecyYeyu3Pst-og_Jo0qKVSdgAjXoaEkU1Fl6fbq_XZL3wyyZ000Ot_vlZ93U_UlVJmEVevYgLn_oJUIAkxywBHzFY.jpg?r=910", 
      name: "The Great Indian Kapil Show"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABe5HSOXqPN48Tq11TvJNoBMKEe6lWDW5obsExyGs72WXHnESo67MrxvGvh2efM_jMVTCGnisuywhdDXgZkJZydUPjjPJ5nquj7_9rfWLZq2cG-SLipC8BKq2UwKEJMrrH3Hi4xaoBLoD9KOFrFX9UL0Zj_ZC9C9QAS9UBvkQY2CAwbFtyBkkCs2xViBISEAW3qmMypNuM7FUz0Yb_1BMY8s7nZXkGzQdWakwyk3f3XkhmqmgQVJmzDH7xQFwxGTxIH-BWl7SM2yqs7gc4rHMtl-z47N_9QXkEyPjyxTat0dqL-GQ4CU7_ijiSjE6GiqmeVkRRwGILLHa3SxN_VkFGhHjkauHTF69mQ3__-tQphOAxQ.jpg?r=ae6", 
      name: "Hellbound"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRZeye699CbS3ulmKh3PqisGepJKoAWw0mqBZCt_x9sUIs5UDCWQ8v6Lodpl1WhOeu1i6_TFwwncD9nFSqRBo4LTISTGu3SMRSV05OCeTSuGnRD5pEvmg3MESciUxhaACD4ZFZprII3SyzWuth8M13jp1w0dLwk_tXJWHtXK-dVEJ5E_Zu3w_QS4P6wtaFtMRM80dtyCbSFEI-IWHEFAczu_OoAnVGahFOA5SIDvjSMbVpacTEcBsJNgRugG9dXIDJX8OCTwQN19XDpYMKHEMIdWTK4-M5LS3xdvEqjTbqWQexcvEp0.jpg?r=78e", 
      name: "Car Masters"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSGApdTg_sOwHRd9CleWP4qb50B2-3he55d4ZWpxKSWm2sRHy5sLp4-eawgledpih20RrXqAIkb7sUI7j2WlLq-gIMM7Mee_dhXA50lg0f8IgfAKX4f-CNzkWeXcxsRyQLPpNLvq9jiDzlDmif5Wj8j3iLSg-qMlCh96Vd3IBgHPWMV3MVzGSiLTb2X4zXw.jpg?r=9f0", 
      name: "Beauty in Black"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSWBrMKymH5zzEzX9aTg66gNXmrFLhsMzTWekVH0MMXBsDHHVxIV_dkgWyznjqhH0xuCdH-fr4bMvh9EQ04s_z-cwmTjfD6E_ww.jpg?r=9ec", 
      name: "Knight Flower"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABaym0V67Vhzs9ihK02Ee8ibY2I6lh-9XxRXeW7dpSt0hFNMG94JShg8uFu68GZFsyDimm0KYz7opCDNppjxT8_njKRuW5_LuJYPJgdM94vIioPMTbCs7cI5of2t__eFGTzJ4.jpg?r=f65", 
      name: "Territory"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABX1fZn-pllaioqYx6gsV8P5dHy3gKRchcIl4X5cJcpkuR36rOMA4G0ND5UMSRPK7eTRNj1BaDdbydP4nUZt9PAGEdbRp_0qaOE2YysSCtvvFPzlB813Tz2YKhn2IpfF0ggbR5ucHGil_sqQGQkhdGLb832N_1mZf1s9klJlAZ4Q87MT43tnB5cMJqyUMBc3HiC1j7sUqOSffTKBKukq3A911QXu8a3mJPBeL08u2D5xlvEY9ILhDK36K7GqIMEF8UkdGlk2mo7xeuPmMC8gPuzDgeXjM4EOA_ZUIE1ZP2RcnuBS5EDt30RdZqvgaLFh85kCwFsiInZ5naIRLMHeJC03RHdXp87IE68gab3tnbc6bDRfuyUW8ZhLsdU0zJOx1pHpi5JcWOSOb_04Yauy5YSPb-sag8tX9BBid2CXbtDZN.jpg?r=293", 
      name: "Kill Me Love Me"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABaiRd3U5IYrac5BPMjiIGU6zJrcfhmuubH4ThwHxhPEb6RxuV0ZD5ckZrKvQZNho43DIMs-BrzAe9XfSFAbm4TsWXWJNgbLKPF4.jpg?r=084", 
      name: "One Piece Fan Letter"),
  ];

  List<NetflixCard> cardList5=[
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUmLgKmFrl2Tq5jDmIBIdp-L6_fRFsTE7KslWARHa4Yb8f8q32MOBiACOoYAGFn4k8Pc_1P7QlN-F41Btkx4q8bp2gg0yA4kCWxamkIcyRVtyIoln6PDWQVi1_IAZHe4PALj.jpg?r=326", 
      name: "Money Heist"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABbqF4ca9ac76dcnTt7AaVUHAoLpEIpK0wVWxy8tmbM1fJi-B6h5U5iNTJlX7LbdMmuCfWljFj1lD139blwcveZtr_8ogjjScBkA.jpg?r=43a", 
      name: "Hidden Love"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSitjBhxTkmKXKaLTESIa5iQ58nAyggjQUOYupjSwRe4gUR-_YAITsOHD6tTTZNuBfh0ssBesZYcvf9X7kTOjYj9LklBcD2gEr8rFmNxUtSBec4jGBl4Faf5hCl09TqioZr0.jpg?r=c8b", 
      name: "Vincenzo"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa6R0zawmvBIlpRMxH9N2cD-aKWcmyqM8q3d_u41QnzVuaTgU8vxi1cWa4Q5oLSVCRjVDIoC0opTfZO_s-hyMzZl1_8PGK449ohLgy9CvPNXpKKkgCeta667RBPXODjZ2UWr.jpg?r=095", 
      name: "Business Proposal"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfEgiz858nApOBUNpDB-aUZzLyRm9kLxpPJAe1lsdUX2gQjE8iePltDCbDhCc19myG-EzOkD84RerU0qyKi7Wwor_29MR1Qi8lC5CwNpbqO2XXc9ctluoEUIaegm-9DcH4yE.jpg?r=298", 
      name: "Unicorn Academy"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfyfO998JNWAx6snVHf7_ydlwuk8I1tPQCttH_W4OCzmhkWufyFODQaEnnftder7T2geYuzZuznJiFtGd8GxlgCATqrUxV8CkgdJkuyboFlkdXKsAmUwSH4kB8UeD0NT7SVp.jpg?r=fb2", 
      name: "Never Have I Ever"),
    NetflixCard(image: "https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQ8UCIw9Po1eDYGwhQvkJkwpZqn2dApkBhXJnTKu-e-tF-AOkcfYzVpDBlJKGI2vNAuEeoAropV_M0j_FVHgRNXi6C9MdaMDqU1esuY-RcP7Zm0u560UV8bJJBkF72G7yC_K.jpg?r=088", 
      name: "Berlin"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "NETFLIX",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.red,
            ),
          ),
        backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Row(
                  children: [
                    //const Padding(padding: EdgeInsets.all(7)),
                const Text("UNLIMITED TV SHOWS & MOVIES ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Container(
                  width: 60,
                  height: 30,
                  //padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: const Text("Join now",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Container(
                  width: 50,
                  height: 30,
                 // padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white)
                  ),
                  child: Center(
                    child: const Text("Sign In",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
               
                ],
                ),
                  const SizedBox(height: 40,),
                  const Text("TV Shows", 
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.white
                  ),
                  ),
                  const Text("These days, the small screen has some very big things to offer. From sitcoms to dramas to travel and talk shows, these are all the best shows on TV.",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                  ),
                  const SizedBox(height: 30,),
              
                  buildHorizontalList("Trending Now", cardList5),
                  buildHorizontalList("New Releases", cardList4),
                  buildHorizontalList("Indian TV shows", cardList1),
                  buildHorizontalList("K-dramas", cardList2),
                  buildHorizontalList("US TV shows", cardList3),
            ],
          ),
        ),
      ),
    ),
    );
  } 


  Widget buildHorizontalList(String title, List<NetflixCard> cardList) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
            ),
          ),
          SizedBox(
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardList.length,
              itemBuilder: (context, index) {
                final card = cardList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.network(card.image, width: 200,height: 150,),
                      Text(card.name,style: const TextStyle(
                                color: Colors.white,
                              ),
                          ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      );
  }
}
