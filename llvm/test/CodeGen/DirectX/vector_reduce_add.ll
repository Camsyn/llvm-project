; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --version 5
; RUN: opt -S  -dxil-intrinsic-expansion  < %s | FileCheck %s

; Make sure dxil operation function calls for lvm.vector.reduce.fadd and lvm.vector.reduce.add are generate.

define noundef half @test_length_half2(<2 x half> noundef %p0) {
; CHECK-LABEL: define noundef half @test_length_half2(
; CHECK-SAME: <2 x half> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <2 x half> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <2 x half> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd half [[TMP0]], [[TMP1]]
; CHECK-NEXT:    ret half [[TMP2]]
;
entry:
  %rdx.fadd = call half @llvm.vector.reduce.fadd.v2f16(half 0xH0000, <2 x half> %p0)
  ret half %rdx.fadd
}

define noundef half @test_length_half2_start1(<2 x half> noundef %p0) {
; CHECK-LABEL: define noundef half @test_length_half2_start1(
; CHECK-SAME: <2 x half> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <2 x half> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = fadd half [[TMP0]], 0xH0001
; CHECK-NEXT:    [[TMP2:%.*]] = extractelement <2 x half> [[P0]], i64 1
; CHECK-NEXT:    [[TMP3:%.*]] = fadd half [[TMP1]], [[TMP2]]
; CHECK-NEXT:    ret half [[TMP3]]
;
entry:
  %rdx.fadd = call half @llvm.vector.reduce.fadd.v2f16(half 0xH0001, <2 x half> %p0)
  ret half %rdx.fadd
}

define noundef half @test_length_half3(<3 x half> noundef %p0) {
; CHECK-LABEL: define noundef half @test_length_half3(
; CHECK-SAME: <3 x half> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <3 x half> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <3 x half> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd half [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <3 x half> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = fadd half [[TMP2]], [[TMP3]]
; CHECK-NEXT:    ret half [[TMP4]]
;
entry:
  %rdx.fadd = call half @llvm.vector.reduce.fadd.v3f16(half 0xH0000, <3 x half> %p0)
  ret half %rdx.fadd
}

define noundef half @test_length_half4(<4 x half> noundef %p0) {
; CHECK-LABEL: define noundef half @test_length_half4(
; CHECK-SAME: <4 x half> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <4 x half> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <4 x half> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd half [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <4 x half> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = fadd half [[TMP2]], [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = extractelement <4 x half> [[P0]], i64 3
; CHECK-NEXT:    [[TMP6:%.*]] = fadd half [[TMP4]], [[TMP5]]
; CHECK-NEXT:    ret half [[TMP6]]
;
entry:
  %rdx.fadd = call half @llvm.vector.reduce.fadd.v4f16(half 0xH0000, <4 x half> %p0)
  ret half %rdx.fadd
}

define noundef float @test_length_float2(<2 x float> noundef %p0) {
; CHECK-LABEL: define noundef float @test_length_float2(
; CHECK-SAME: <2 x float> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <2 x float> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <2 x float> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd float [[TMP0]], [[TMP1]]
; CHECK-NEXT:    ret float [[TMP2]]
;
entry:
  %rdx.fadd = call float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %p0)
  ret float %rdx.fadd
}

define noundef float @test_length_float3(<3 x float> noundef %p0) {
; CHECK-LABEL: define noundef float @test_length_float3(
; CHECK-SAME: <3 x float> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <3 x float> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <3 x float> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd float [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <3 x float> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = fadd float [[TMP2]], [[TMP3]]
; CHECK-NEXT:    ret float [[TMP4]]
;
entry:
  %rdx.fadd = call float @llvm.vector.reduce.fadd.v3f32(float 0.000000e+00, <3 x float> %p0)
  ret float %rdx.fadd
}

define noundef float @test_length_float3_start1(<3 x float> noundef %p0) {
; CHECK-LABEL: define noundef float @test_length_float3_start1(
; CHECK-SAME: <3 x float> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <3 x float> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = fadd float [[TMP0]], 1.000000e+00
; CHECK-NEXT:    [[TMP2:%.*]] = extractelement <3 x float> [[P0]], i64 1
; CHECK-NEXT:    [[TMP3:%.*]] = fadd float [[TMP1]], [[TMP2]]
; CHECK-NEXT:    [[TMP4:%.*]] = extractelement <3 x float> [[P0]], i64 2
; CHECK-NEXT:    [[TMP5:%.*]] = fadd float [[TMP3]], [[TMP4]]
; CHECK-NEXT:    ret float [[TMP5]]
;
entry:
  %rdx.fadd = call float @llvm.vector.reduce.fadd.v3f32(float 1.000000e+00, <3 x float> %p0)
  ret float %rdx.fadd
}

define noundef float @test_length_float4(<4 x float> noundef %p0) {
; CHECK-LABEL: define noundef float @test_length_float4(
; CHECK-SAME: <4 x float> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <4 x float> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <4 x float> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd float [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <4 x float> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = fadd float [[TMP2]], [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = extractelement <4 x float> [[P0]], i64 3
; CHECK-NEXT:    [[TMP6:%.*]] = fadd float [[TMP4]], [[TMP5]]
; CHECK-NEXT:    ret float [[TMP6]]
;
entry:
  %rdx.fadd = call float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %p0)
  ret float %rdx.fadd
}

define noundef double @test_length_double2(<2 x double> noundef %p0) {
; CHECK-LABEL: define noundef double @test_length_double2(
; CHECK-SAME: <2 x double> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <2 x double> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <2 x double> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd double [[TMP0]], [[TMP1]]
; CHECK-NEXT:    ret double [[TMP2]]
;
entry:
  %rdx.fadd = call double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %p0)
  ret double %rdx.fadd
}

define noundef double @test_length_double3(<3 x double> noundef %p0) {
; CHECK-LABEL: define noundef double @test_length_double3(
; CHECK-SAME: <3 x double> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <3 x double> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <3 x double> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd double [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <3 x double> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = fadd double [[TMP2]], [[TMP3]]
; CHECK-NEXT:    ret double [[TMP4]]
;
entry:
  %rdx.fadd = call double @llvm.vector.reduce.fadd.v3f64(double 0.000000e+00, <3 x double> %p0)
  ret double %rdx.fadd
}

define noundef double @test_length_double4(<4 x double> noundef %p0) {
; CHECK-LABEL: define noundef double @test_length_double4(
; CHECK-SAME: <4 x double> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <4 x double> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <4 x double> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = fadd double [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <4 x double> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = fadd double [[TMP2]], [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = extractelement <4 x double> [[P0]], i64 3
; CHECK-NEXT:    [[TMP6:%.*]] = fadd double [[TMP4]], [[TMP5]]
; CHECK-NEXT:    ret double [[TMP6]]
;
entry:
  %rdx.fadd = call double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %p0)
  ret double %rdx.fadd
}

define noundef double @test_length_double4_start1(<4 x double> noundef %p0) {
; CHECK-LABEL: define noundef double @test_length_double4_start1(
; CHECK-SAME: <4 x double> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <4 x double> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = fadd double [[TMP0]], 1.000000e+00
; CHECK-NEXT:    [[TMP2:%.*]] = extractelement <4 x double> [[P0]], i64 1
; CHECK-NEXT:    [[TMP3:%.*]] = fadd double [[TMP1]], [[TMP2]]
; CHECK-NEXT:    [[TMP4:%.*]] = extractelement <4 x double> [[P0]], i64 2
; CHECK-NEXT:    [[TMP5:%.*]] = fadd double [[TMP3]], [[TMP4]]
; CHECK-NEXT:    [[TMP6:%.*]] = extractelement <4 x double> [[P0]], i64 3
; CHECK-NEXT:    [[TMP7:%.*]] = fadd double [[TMP5]], [[TMP6]]
; CHECK-NEXT:    ret double [[TMP7]]
;
entry:
  %rdx.fadd = call double @llvm.vector.reduce.fadd.v4f64(double 1.000000e+00, <4 x double> %p0)
  ret double %rdx.fadd
}

define noundef i16 @test_length_short2(<2 x i16> noundef %p0) {
; CHECK-LABEL: define noundef i16 @test_length_short2(
; CHECK-SAME: <2 x i16> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <2 x i16> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <2 x i16> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i16 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    ret i16 [[TMP2]]
;
entry:
  %rdx.add = call i16 @llvm.vector.reduce.add.v2i16(<2 x i16> %p0)
  ret i16 %rdx.add
}

define noundef i16 @test_length_short3(<3 x i16> noundef %p0) {
; CHECK-LABEL: define noundef i16 @test_length_short3(
; CHECK-SAME: <3 x i16> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <3 x i16> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <3 x i16> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i16 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <3 x i16> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = add i16 [[TMP2]], [[TMP3]]
; CHECK-NEXT:    ret i16 [[TMP4]]
;
entry:
  %rdx.fadd = call i16 @llvm.vector.reduce.add.v3i16(<3 x i16> %p0)
  ret i16 %rdx.fadd
}

define noundef i16 @test_length_short4(<4 x i16> noundef %p0) {
; CHECK-LABEL: define noundef i16 @test_length_short4(
; CHECK-SAME: <4 x i16> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <4 x i16> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <4 x i16> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i16 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <4 x i16> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = add i16 [[TMP2]], [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = extractelement <4 x i16> [[P0]], i64 3
; CHECK-NEXT:    [[TMP6:%.*]] = add i16 [[TMP4]], [[TMP5]]
; CHECK-NEXT:    ret i16 [[TMP6]]
;
entry:
  %rdx.fadd = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %p0)
  ret i16 %rdx.fadd
}

define noundef i32 @test_length_int2(<2 x i32> noundef %p0) {
; CHECK-LABEL: define noundef i32 @test_length_int2(
; CHECK-SAME: <2 x i32> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <2 x i32> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <2 x i32> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i32 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    ret i32 [[TMP2]]
;
entry:
  %rdx.add = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %p0)
  ret i32 %rdx.add
}

define noundef i32 @test_length_int3(<3 x i32> noundef %p0) {
; CHECK-LABEL: define noundef i32 @test_length_int3(
; CHECK-SAME: <3 x i32> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <3 x i32> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <3 x i32> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i32 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <3 x i32> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = add i32 [[TMP2]], [[TMP3]]
; CHECK-NEXT:    ret i32 [[TMP4]]
;
entry:
  %rdx.fadd = call i32 @llvm.vector.reduce.add.v3i32(<3 x i32> %p0)
  ret i32 %rdx.fadd
}

define noundef i32 @test_length_int4(<4 x i32> noundef %p0) {
; CHECK-LABEL: define noundef i32 @test_length_int4(
; CHECK-SAME: <4 x i32> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <4 x i32> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <4 x i32> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i32 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <4 x i32> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = add i32 [[TMP2]], [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = extractelement <4 x i32> [[P0]], i64 3
; CHECK-NEXT:    [[TMP6:%.*]] = add i32 [[TMP4]], [[TMP5]]
; CHECK-NEXT:    ret i32 [[TMP6]]
;
entry:
  %rdx.fadd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %p0)
  ret i32 %rdx.fadd
}

define noundef i64 @test_length_int64_2(<2 x i64> noundef %p0) {
; CHECK-LABEL: define noundef i64 @test_length_int64_2(
; CHECK-SAME: <2 x i64> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <2 x i64> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <2 x i64> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i64 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    ret i64 [[TMP2]]
;
entry:
  %rdx.add = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %p0)
  ret i64 %rdx.add
}

define noundef i64 @test_length_int64_3(<3 x i64> noundef %p0) {
; CHECK-LABEL: define noundef i64 @test_length_int64_3(
; CHECK-SAME: <3 x i64> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <3 x i64> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <3 x i64> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i64 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <3 x i64> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = add i64 [[TMP2]], [[TMP3]]
; CHECK-NEXT:    ret i64 [[TMP4]]
;
entry:
  %rdx.fadd = call i64 @llvm.vector.reduce.add.v3i64(<3 x i64> %p0)
  ret i64 %rdx.fadd
}

define noundef i64 @test_length_int64_4(<4 x i64> noundef %p0) {
; CHECK-LABEL: define noundef i64 @test_length_int64_4(
; CHECK-SAME: <4 x i64> noundef [[P0:%.*]]) {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = extractelement <4 x i64> [[P0]], i64 0
; CHECK-NEXT:    [[TMP1:%.*]] = extractelement <4 x i64> [[P0]], i64 1
; CHECK-NEXT:    [[TMP2:%.*]] = add i64 [[TMP0]], [[TMP1]]
; CHECK-NEXT:    [[TMP3:%.*]] = extractelement <4 x i64> [[P0]], i64 2
; CHECK-NEXT:    [[TMP4:%.*]] = add i64 [[TMP2]], [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = extractelement <4 x i64> [[P0]], i64 3
; CHECK-NEXT:    [[TMP6:%.*]] = add i64 [[TMP4]], [[TMP5]]
; CHECK-NEXT:    ret i64 [[TMP6]]
;
entry:
  %rdx.fadd = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %p0)
  ret i64 %rdx.fadd
}
