test_vpkswss_0:
  #_ REGISTER_IN v3 [00000001, 00000002, 00000003, 00000004]
  #_ REGISTER_IN v4 [00000005, 00000006, 00000007, 00000008]
  vpkswss v5, v3, v4
  blr
  #_ REGISTER_OUT v3 [00000001, 00000002, 00000003, 00000004]
  #_ REGISTER_OUT v4 [00000005, 00000006, 00000007, 00000008]
  #_ REGISTER_OUT v5 [00010002, 00030004, 00050006, 00070008]

test_vpkswss_1:
  #_ REGISTER_IN v3 [7FFFFFFF, 80000000, 00000000, 00000004]
  #_ REGISTER_IN v4 [7FFFFFFF, 80000000, 00000000, 00000008]
  vpkswss v5, v3, v4
  blr
  #_ REGISTER_OUT v3 [7FFFFFFF, 80000000, 00000000, 00000004]
  #_ REGISTER_OUT v4 [7FFFFFFF, 80000000, 00000000, 00000008]
  #_ REGISTER_OUT v5 [7FFF8000, 00000004, 7FFF8000, 00000008]
