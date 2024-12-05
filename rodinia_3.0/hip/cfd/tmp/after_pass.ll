; ModuleID = '<stdin>'
source_filename = "euler3d.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { %"struct.HIP_vector_base<float, 3>::Native_vec_" }
%"struct.HIP_vector_base<float, 3>::Native_vec_" = type { [3 x float] }

; Function Attrs: nofree norecurse nounwind
define protected amdgpu_kernel void @_Z25cuda_initialize_variablesiPfS_(i32 %0, float addrspace(1)* nocapture %1, float addrspace(1)* nocapture readonly %2) local_unnamed_addr #0 {
  %4 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %5 = getelementptr i8, i8 addrspace(4)* %4, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !4, !invariant.load !5
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %9 = zext i16 %7 to i32
  %10 = mul i32 %8, %9
  %11 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %12 = add i32 %10, %11
  %13 = bitcast float addrspace(1)* %2 to i32 addrspace(1)*
  %14 = load i32, i32 addrspace(1)* %13, align 4, !tbaa !7
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds float, float addrspace(1)* %1, i64 %15
  %17 = bitcast float addrspace(1)* %16 to i32 addrspace(1)*
  store i32 %14, i32 addrspace(1)* %17, align 4, !tbaa !7
  %18 = getelementptr inbounds float, float addrspace(1)* %2, i64 1
  %19 = bitcast float addrspace(1)* %18 to i32 addrspace(1)*
  %20 = load i32, i32 addrspace(1)* %19, align 4, !tbaa !7
  %21 = add nsw i32 %12, %0
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float addrspace(1)* %1, i64 %22
  %24 = bitcast float addrspace(1)* %23 to i32 addrspace(1)*
  store i32 %20, i32 addrspace(1)* %24, align 4, !tbaa !7
  %25 = getelementptr inbounds float, float addrspace(1)* %2, i64 2
  %26 = bitcast float addrspace(1)* %25 to i32 addrspace(1)*
  %27 = load i32, i32 addrspace(1)* %26, align 4, !tbaa !7
  %28 = shl nsw i32 %0, 1
  %29 = add nsw i32 %12, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float addrspace(1)* %1, i64 %30
  %32 = bitcast float addrspace(1)* %31 to i32 addrspace(1)*
  store i32 %27, i32 addrspace(1)* %32, align 4, !tbaa !7
  %33 = getelementptr inbounds float, float addrspace(1)* %2, i64 3
  %34 = bitcast float addrspace(1)* %33 to i32 addrspace(1)*
  %35 = load i32, i32 addrspace(1)* %34, align 4, !tbaa !7
  %36 = mul nsw i32 %0, 3
  %37 = add nsw i32 %12, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float addrspace(1)* %1, i64 %38
  %40 = bitcast float addrspace(1)* %39 to i32 addrspace(1)*
  store i32 %35, i32 addrspace(1)* %40, align 4, !tbaa !7
  %41 = getelementptr inbounds float, float addrspace(1)* %2, i64 4
  %42 = bitcast float addrspace(1)* %41 to i32 addrspace(1)*
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !7
  %44 = shl nsw i32 %0, 2
  %45 = add nsw i32 %12, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float addrspace(1)* %1, i64 %46
  %48 = bitcast float addrspace(1)* %47 to i32 addrspace(1)*
  store i32 %43, i32 addrspace(1)* %48, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind
define protected amdgpu_kernel void @_Z24cuda_compute_step_factoriPfS_S_(i32 %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture %3) local_unnamed_addr #0 {
  %5 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !4, !invariant.load !5
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = zext i16 %8 to i64
  %11 = zext i32 %9 to i64
  %12 = mul nuw nsw i64 %10, %11
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %14 = zext i32 %13 to i64
  %15 = add nuw nsw i64 %12, %14
  %16 = trunc i64 %15 to i32
  %17 = shl i64 %15, 32
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds float, float addrspace(1)* %1, i64 %18
  %20 = load float, float addrspace(1)* %19, align 4, !tbaa !7
  %21 = add nsw i32 %16, %0
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float addrspace(1)* %1, i64 %22
  %24 = load float, float addrspace(1)* %23, align 4, !tbaa !7
  %25 = shl nsw i32 %0, 1
  %26 = add nsw i32 %25, %16
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float addrspace(1)* %1, i64 %27
  %29 = load float, float addrspace(1)* %28, align 4, !tbaa !7
  %30 = mul nsw i32 %0, 3
  %31 = add nsw i32 %30, %16
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float addrspace(1)* %1, i64 %32
  %34 = load float, float addrspace(1)* %33, align 4, !tbaa !7
  %35 = shl nsw i32 %0, 2
  %36 = add nsw i32 %35, %16
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float addrspace(1)* %1, i64 %37
  %39 = load float, float addrspace(1)* %38, align 4, !tbaa !7
  %40 = fdiv contract float %24, %20
  %41 = fdiv contract float %29, %20
  %42 = fdiv contract float %34, %20
  %43 = fmul contract float %40, %40
  %44 = fmul contract float %41, %41
  %45 = fadd contract float %43, %44
  %46 = fmul contract float %42, %42
  %47 = fadd contract float %45, %46
  %48 = fmul contract float %20, 5.000000e-01
  %49 = fmul contract float %48, %47
  %50 = fsub contract float %39, %49
  %51 = fmul contract float %50, 0x3FD9999980000000
  %52 = fmul contract float %51, 0x3FF6666660000000
  %53 = fdiv contract float %52, %20
  %54 = fcmp olt float %53, 0x39F0000000000000
  %55 = select i1 %54, float 0x41F0000000000000, float 1.000000e+00
  %56 = fmul float %53, %55
  %57 = tail call float @llvm.sqrt.f32(float %56) #3
  %58 = bitcast float %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = bitcast i32 %59 to float
  %61 = add nsw i32 %58, 1
  %62 = bitcast i32 %61 to float
  %63 = tail call i1 @llvm.amdgcn.class.f32(float %56, i32 608) #3
  %64 = select i1 %54, float 0x3EF0000000000000, float 1.000000e+00
  %65 = fneg float %62
  %66 = tail call float @llvm.fma.f32(float %65, float %57, float %56) #3
  %67 = fcmp ogt float %66, 0.000000e+00
  %68 = fneg float %60
  %69 = tail call float @llvm.fma.f32(float %68, float %57, float %56) #3
  %70 = fcmp ole float %69, 0.000000e+00
  %71 = select i1 %70, float %60, float %57
  %72 = select i1 %67, float %62, float %71
  %73 = fmul float %64, %72
  %74 = select i1 %63, float %56, float %73
  %75 = getelementptr inbounds float, float addrspace(1)* %2, i64 %18
  %76 = load float, float addrspace(1)* %75, align 4, !tbaa !7
  %77 = fcmp olt float %76, 0x39F0000000000000
  %78 = select i1 %77, float 0x41F0000000000000, float 1.000000e+00
  %79 = fmul float %76, %78
  %80 = tail call float @llvm.sqrt.f32(float %79) #3
  %81 = bitcast float %80 to i32
  %82 = add nsw i32 %81, -1
  %83 = bitcast i32 %82 to float
  %84 = add nsw i32 %81, 1
  %85 = bitcast i32 %84 to float
  %86 = tail call i1 @llvm.amdgcn.class.f32(float %79, i32 608) #3
  %87 = select i1 %77, float 0x3EF0000000000000, float 1.000000e+00
  %88 = fneg float %85
  %89 = tail call float @llvm.fma.f32(float %88, float %80, float %79) #3
  %90 = fcmp ogt float %89, 0.000000e+00
  %91 = fneg float %83
  %92 = tail call float @llvm.fma.f32(float %91, float %80, float %79) #3
  %93 = fcmp ole float %92, 0.000000e+00
  %94 = select i1 %93, float %83, float %80
  %95 = select i1 %90, float %85, float %94
  %96 = fmul float %87, %95
  %97 = select i1 %86, float %79, float %96
  %98 = fcmp olt float %47, 0x39F0000000000000
  %99 = select i1 %98, float 0x41F0000000000000, float 1.000000e+00
  %100 = fmul float %47, %99
  %101 = tail call float @llvm.sqrt.f32(float %100) #3
  %102 = bitcast float %101 to i32
  %103 = add nsw i32 %102, -1
  %104 = bitcast i32 %103 to float
  %105 = add nsw i32 %102, 1
  %106 = bitcast i32 %105 to float
  %107 = tail call i1 @llvm.amdgcn.class.f32(float %100, i32 608) #3
  %108 = select i1 %98, float 0x3EF0000000000000, float 1.000000e+00
  %109 = fneg float %106
  %110 = tail call float @llvm.fma.f32(float %109, float %101, float %100) #3
  %111 = fcmp ogt float %110, 0.000000e+00
  %112 = fneg float %104
  %113 = tail call float @llvm.fma.f32(float %112, float %101, float %100) #3
  %114 = fcmp ole float %113, 0.000000e+00
  %115 = select i1 %114, float %104, float %101
  %116 = select i1 %111, float %106, float %115
  %117 = fmul float %108, %116
  %118 = select i1 %107, float %100, float %117
  %119 = fadd contract float %118, %74
  %120 = fmul contract float %97, %119
  %121 = fdiv contract float 5.000000e-01, %120
  %122 = getelementptr inbounds float, float addrspace(1)* %3, i64 %18
  store float %121, float addrspace(1)* %122, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind
define protected amdgpu_kernel void @_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_(i32 %0, i32 addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture %4, float addrspace(1)* nocapture readonly %5, %struct.HIP_vector_type addrspace(1)* nocapture readonly %6, %struct.HIP_vector_type addrspace(1)* nocapture readonly %7) local_unnamed_addr #0 {
unify.bb:
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %10 = bitcast i8 addrspace(4)* %9 to i16 addrspace(4)*
  %11 = load i16, i16 addrspace(4)* %10, align 4, !range !4, !invariant.load !5
  %12 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %13 = zext i16 %11 to i64
  %14 = zext i32 %12 to i64
  %15 = mul nuw nsw i64 %13, %14
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = shl i64 %18, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds float, float addrspace(1)* %3, i64 %21
  %23 = load float, float addrspace(1)* %22, align 4, !tbaa !7
  %24 = add nsw i32 %19, %0
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float addrspace(1)* %3, i64 %25
  %27 = load float, float addrspace(1)* %26, align 4, !tbaa !7
  %28 = shl nsw i32 %0, 1
  %29 = add nsw i32 %28, %19
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float addrspace(1)* %3, i64 %30
  %32 = load float, float addrspace(1)* %31, align 4, !tbaa !7
  %33 = mul nsw i32 %0, 3
  %34 = add nsw i32 %33, %19
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float addrspace(1)* %3, i64 %35
  %37 = load float, float addrspace(1)* %36, align 4, !tbaa !7
  %38 = shl nsw i32 %0, 2
  %39 = add nsw i32 %38, %19
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float addrspace(1)* %3, i64 %40
  %42 = load float, float addrspace(1)* %41, align 4, !tbaa !7
  %43 = fdiv contract float %27, %23
  %44 = fdiv contract float %32, %23
  %45 = fdiv contract float %37, %23
  %46 = fmul contract float %43, %43
  %47 = fmul contract float %44, %44
  %48 = fadd contract float %46, %47
  %49 = fmul contract float %45, %45
  %50 = fadd contract float %48, %49
  %51 = fcmp olt float %50, 0x39F0000000000000
  %52 = select i1 %51, float 0x41F0000000000000, float 1.000000e+00
  %53 = fmul float %50, %52
  %54 = tail call float @llvm.sqrt.f32(float %53) #3
  %55 = bitcast float %54 to i32
  %56 = add nsw i32 %55, -1
  %57 = bitcast i32 %56 to float
  %58 = add nsw i32 %55, 1
  %59 = bitcast i32 %58 to float
  %60 = tail call i1 @llvm.amdgcn.class.f32(float %53, i32 608) #3
  %61 = select i1 %51, float 0x3EF0000000000000, float 1.000000e+00
  %62 = fneg float %59
  %63 = tail call float @llvm.fma.f32(float %62, float %54, float %53) #3
  %64 = fcmp ogt float %63, 0.000000e+00
  %65 = fneg float %57
  %66 = tail call float @llvm.fma.f32(float %65, float %54, float %53) #3
  %67 = fcmp ole float %66, 0.000000e+00
  %68 = select i1 %67, float %57, float %54
  %69 = select i1 %64, float %59, float %68
  %70 = fmul float %61, %69
  %71 = select i1 %60, float %53, float %70
  %72 = fmul contract float %23, 5.000000e-01
  %73 = fmul contract float %72, %50
  %74 = fsub contract float %42, %73
  %75 = fmul contract float %74, 0x3FD9999980000000
  %76 = fmul contract float %75, 0x3FF6666660000000
  %77 = fdiv contract float %76, %23
  %78 = fcmp olt float %77, 0x39F0000000000000
  %79 = select i1 %78, float 0x41F0000000000000, float 1.000000e+00
  %80 = fmul float %77, %79
  %81 = tail call float @llvm.sqrt.f32(float %80) #3
  %82 = bitcast float %81 to i32
  %83 = add nsw i32 %82, -1
  %84 = bitcast i32 %83 to float
  %85 = add nsw i32 %82, 1
  %86 = bitcast i32 %85 to float
  %87 = tail call i1 @llvm.amdgcn.class.f32(float %80, i32 608) #3
  %88 = select i1 %78, float 0x3EF0000000000000, float 1.000000e+00
  %89 = fneg float %86
  %90 = tail call float @llvm.fma.f32(float %89, float %81, float %80) #3
  %91 = fcmp ogt float %90, 0.000000e+00
  %92 = fneg float %84
  %93 = tail call float @llvm.fma.f32(float %92, float %81, float %80) #3
  %94 = fcmp ole float %93, 0.000000e+00
  %95 = select i1 %94, float %84, float %81
  %96 = select i1 %91, float %86, float %95
  %97 = fmul float %88, %96
  %98 = select i1 %87, float %80, float %97
  %99 = fmul contract float %27, %43
  %100 = fadd contract float %99, %75
  %101 = fmul contract float %43, %32
  %102 = fmul contract float %43, %37
  %103 = fmul contract float %32, %44
  %104 = fadd contract float %103, %75
  %105 = fmul contract float %44, %37
  %106 = fmul contract float %37, %45
  %107 = fadd contract float %106, %75
  %108 = fadd contract float %42, %75
  %109 = fmul contract float %43, %108
  %110 = fmul contract float %44, %108
  %111 = fmul contract float %45, %108
  %112 = getelementptr inbounds float, float addrspace(1)* %5, i64 1
  %113 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %114 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %115 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 1, i32 0, i32 0, i32 0, i32 0, i64 0
  %116 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 2, i32 0, i32 0, i32 0, i32 0, i64 0
  %117 = getelementptr inbounds float, float addrspace(1)* %5, i64 2
  %118 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %119 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %120 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 1, i32 0, i32 0, i32 0, i32 0, i64 1
  %121 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 2, i32 0, i32 0, i32 0, i32 0, i64 1
  %122 = getelementptr inbounds float, float addrspace(1)* %5, i64 3
  %123 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %124 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %125 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 1, i32 0, i32 0, i32 0, i32 0, i64 2
  %126 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %6, i64 2, i32 0, i32 0, i32 0, i32 0, i64 2
  %127 = shl i64 %18, 32
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %128
  %130 = load i32, i32 addrspace(1)* %129, align 4, !tbaa !11
  %131 = getelementptr inbounds float, float addrspace(1)* %2, i64 %128
  %132 = load float, float addrspace(1)* %131, align 4, !tbaa !7
  %133 = shl nsw i32 %0, 2
  %134 = add nsw i32 %133, %19
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float addrspace(1)* %2, i64 %135
  %137 = load float, float addrspace(1)* %136, align 4, !tbaa !7
  %138 = shl nsw i32 %0, 3
  %139 = add nsw i32 %138, %19
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float addrspace(1)* %2, i64 %140
  %142 = load float, float addrspace(1)* %141, align 4, !tbaa !7
  %143 = fmul contract float %132, %132
  %144 = fmul contract float %137, %137
  %145 = fadd contract float %143, %144
  %146 = fmul contract float %142, %142
  %147 = fadd contract float %145, %146
  %148 = fcmp olt float %147, 0x39F0000000000000
  %149 = select i1 %148, float 0x41F0000000000000, float 1.000000e+00
  %150 = fmul float %147, %149
  %151 = tail call float @llvm.sqrt.f32(float %150) #3
  %152 = bitcast float %151 to i32
  %153 = add nsw i32 %152, -1
  %154 = bitcast i32 %153 to float
  %155 = add nsw i32 %152, 1
  %156 = bitcast i32 %155 to float
  %157 = icmp sgt i32 %130, -1
  %158 = icmp slt i32 %130, -1
  %159 = select i1 %157, i1 true, i1 %158
  %160 = icmp eq i32 %130, -2
  %161 = select i1 %157, i1 true, i1 %160
  %162 = select i1 %159, i1 %161, i1 true
  br i1 %162, label %merged.bb245, label %merged.bb236

merged.branch.split:                              ; preds = %merged.bb29, %merged.branch.split99
  %163 = phi float [ %302, %merged.branch.split99 ], [ %297, %merged.bb29 ]
  %164 = phi float [ %301, %merged.branch.split99 ], [ %293, %merged.bb29 ]
  %165 = phi float [ %300, %merged.branch.split99 ], [ %294, %merged.bb29 ]
  %166 = phi float [ %299, %merged.branch.split99 ], [ %295, %merged.bb29 ]
  %167 = phi float [ %298, %merged.branch.split99 ], [ %296, %merged.bb29 ]
  %168 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %25
  %169 = load i32, i32 addrspace(1)* %168, align 4, !tbaa !11
  %170 = getelementptr inbounds float, float addrspace(1)* %2, i64 %25
  %171 = load float, float addrspace(1)* %170, align 4, !tbaa !7
  %172 = mul nsw i32 %0, 5
  %173 = add nsw i32 %172, %19
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float addrspace(1)* %2, i64 %174
  %176 = load float, float addrspace(1)* %175, align 4, !tbaa !7
  %177 = mul nsw i32 %0, 9
  %178 = add nsw i32 %177, %19
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float addrspace(1)* %2, i64 %179
  %181 = load float, float addrspace(1)* %180, align 4, !tbaa !7
  %182 = fmul contract float %171, %171
  %183 = fmul contract float %176, %176
  %184 = fadd contract float %182, %183
  %185 = fmul contract float %181, %181
  %186 = fadd contract float %184, %185
  %187 = fcmp olt float %186, 0x39F0000000000000
  %188 = select i1 %187, float 0x41F0000000000000, float 1.000000e+00
  %189 = fmul float %186, %188
  %190 = tail call float @llvm.sqrt.f32(float %189) #3
  %191 = bitcast float %190 to i32
  %192 = add nsw i32 %191, -1
  %193 = bitcast i32 %192 to float
  %194 = add nsw i32 %191, 1
  %195 = bitcast i32 %194 to float
  %196 = icmp sgt i32 %169, -1
  %197 = icmp slt i32 %169, -1
  %198 = select i1 %196, i1 true, i1 %197
  %199 = icmp eq i32 %169, -2
  %200 = select i1 %196, i1 true, i1 %199
  %201 = select i1 %198, i1 %200, i1 true
  br i1 %201, label %merged.bb502, label %merged.bb486

NewDefault1:                                      ; preds = %merged.bb283, %merged.branch.split288
  %202 = phi float [ %664, %merged.branch.split288 ], [ %659, %merged.bb283 ]
  %203 = phi float [ %663, %merged.branch.split288 ], [ %655, %merged.bb283 ]
  %204 = phi float [ %662, %merged.branch.split288 ], [ %656, %merged.bb283 ]
  %205 = phi float [ %661, %merged.branch.split288 ], [ %657, %merged.bb283 ]
  %206 = phi float [ %660, %merged.branch.split288 ], [ %658, %merged.bb283 ]
  %207 = shl nsw i32 %0, 1
  %208 = add nsw i32 %207, %19
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %209
  %211 = load i32, i32 addrspace(1)* %210, align 4, !tbaa !11
  %212 = getelementptr inbounds float, float addrspace(1)* %2, i64 %209
  %213 = load float, float addrspace(1)* %212, align 4, !tbaa !7
  %214 = mul nsw i32 %0, 6
  %215 = add nsw i32 %214, %19
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float addrspace(1)* %2, i64 %216
  %218 = load float, float addrspace(1)* %217, align 4, !tbaa !7
  %219 = mul nsw i32 %0, 10
  %220 = add nsw i32 %219, %19
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float addrspace(1)* %2, i64 %221
  %223 = load float, float addrspace(1)* %222, align 4, !tbaa !7
  %224 = fmul contract float %213, %213
  %225 = fmul contract float %218, %218
  %226 = fadd contract float %224, %225
  %227 = fmul contract float %223, %223
  %228 = fadd contract float %226, %227
  %229 = fcmp olt float %228, 0x39F0000000000000
  %230 = select i1 %229, float 0x41F0000000000000, float 1.000000e+00
  %231 = fmul float %228, %230
  %232 = tail call float @llvm.sqrt.f32(float %231) #3
  %233 = bitcast float %232 to i32
  %234 = add nsw i32 %233, -1
  %235 = bitcast i32 %234 to float
  %236 = add nsw i32 %233, 1
  %237 = bitcast i32 %236 to float
  %238 = icmp sgt i32 %211, -1
  %239 = icmp slt i32 %211, -1
  %240 = select i1 %238, i1 true, i1 %239
  %241 = icmp eq i32 %211, -2
  %242 = select i1 %238, i1 true, i1 %241
  %243 = select i1 %240, i1 %242, i1 true
  br i1 %243, label %merged.bb762, label %merged.bb742

NewDefault6:                                      ; preds = %merged.bb541, %merged.branch.split610
  %244 = phi float [ %1026, %merged.branch.split610 ], [ %1021, %merged.bb541 ]
  %245 = phi float [ %1025, %merged.branch.split610 ], [ %1017, %merged.bb541 ]
  %246 = phi float [ %1024, %merged.branch.split610 ], [ %1018, %merged.bb541 ]
  %247 = phi float [ %1023, %merged.branch.split610 ], [ %1019, %merged.bb541 ]
  %248 = phi float [ %1022, %merged.branch.split610 ], [ %1020, %merged.bb541 ]
  %249 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %35
  %250 = load i32, i32 addrspace(1)* %249, align 4, !tbaa !11
  %251 = getelementptr inbounds float, float addrspace(1)* %2, i64 %35
  %252 = load float, float addrspace(1)* %251, align 4, !tbaa !7
  %253 = mul nsw i32 %0, 7
  %254 = add nsw i32 %253, %19
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float addrspace(1)* %2, i64 %255
  %257 = load float, float addrspace(1)* %256, align 4, !tbaa !7
  %258 = mul nsw i32 %0, 11
  %259 = add nsw i32 %258, %19
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float addrspace(1)* %2, i64 %260
  %262 = load float, float addrspace(1)* %261, align 4, !tbaa !7
  %263 = fmul contract float %252, %252
  %264 = fmul contract float %257, %257
  %265 = fadd contract float %263, %264
  %266 = fmul contract float %262, %262
  %267 = fadd contract float %265, %266
  %268 = fcmp olt float %267, 0x39F0000000000000
  %269 = select i1 %268, float 0x41F0000000000000, float 1.000000e+00
  %270 = fmul float %267, %269
  %271 = tail call float @llvm.sqrt.f32(float %270) #3
  %272 = bitcast float %271 to i32
  %273 = add nsw i32 %272, -1
  %274 = bitcast i32 %273 to float
  %275 = add nsw i32 %272, 1
  %276 = bitcast i32 %275 to float
  %277 = icmp sgt i32 %250, -1
  %278 = icmp slt i32 %250, -1
  %279 = select i1 %277, i1 true, i1 %278
  %280 = icmp eq i32 %250, -2
  %281 = select i1 %277, i1 true, i1 %280
  %282 = select i1 %279, i1 %281, i1 true
  br i1 %282, label %merged.bb1009, label %merged.bb1020

NewDefault11:                                     ; preds = %merged.bb, %merged.branch.split800
  %283 = phi float [ %1388, %merged.branch.split800 ], [ %1383, %merged.bb ]
  %284 = phi float [ %1387, %merged.branch.split800 ], [ %1379, %merged.bb ]
  %285 = phi float [ %1386, %merged.branch.split800 ], [ %1380, %merged.bb ]
  %286 = phi float [ %1385, %merged.branch.split800 ], [ %1381, %merged.bb ]
  %287 = phi float [ %1384, %merged.branch.split800 ], [ %1382, %merged.bb ]
  %288 = getelementptr inbounds float, float addrspace(1)* %4, i64 %21
  store float %283, float addrspace(1)* %288, align 4, !tbaa !7
  %289 = getelementptr inbounds float, float addrspace(1)* %4, i64 %25
  store float %286, float addrspace(1)* %289, align 4, !tbaa !7
  %290 = getelementptr inbounds float, float addrspace(1)* %4, i64 %30
  store float %285, float addrspace(1)* %290, align 4, !tbaa !7
  %291 = getelementptr inbounds float, float addrspace(1)* %4, i64 %35
  store float %284, float addrspace(1)* %291, align 4, !tbaa !7
  %292 = getelementptr inbounds float, float addrspace(1)* %4, i64 %40
  store float %287, float addrspace(1)* %292, align 4, !tbaa !7
  ret void

merged.bb29:                                      ; preds = %merged.bb236, %merged.branch.split262
  %293 = phi float [ undef, %merged.branch.split262 ], [ %472, %merged.bb236 ]
  %294 = phi float [ undef, %merged.branch.split262 ], [ %471, %merged.bb236 ]
  %295 = phi float [ undef, %merged.branch.split262 ], [ %470, %merged.bb236 ]
  %296 = phi float [ undef, %merged.branch.split262 ], [ %469, %merged.bb236 ]
  %297 = phi float [ undef, %merged.branch.split262 ], [ %468, %merged.bb236 ]
  %298 = phi float [ 0.000000e+00, %merged.branch.split262 ], [ %467, %merged.bb236 ]
  %299 = phi float [ %475, %merged.branch.split262 ], [ %466, %merged.bb236 ]
  %300 = phi float [ %474, %merged.branch.split262 ], [ %465, %merged.bb236 ]
  %301 = phi float [ %473, %merged.branch.split262 ], [ %464, %merged.bb236 ]
  %302 = phi float [ 0.000000e+00, %merged.branch.split262 ], [ %463, %merged.bb236 ]
  br i1 %157, label %merged.branch.split, label %merged.branch.split99

merged.branch.split99:                            ; preds = %merged.bb29
  br label %merged.branch.split

merged.bb227:                                     ; preds = %merged.bb228, %merged.bb248
  %303 = phi float [ %570, %merged.bb248 ], [ undef, %merged.bb228 ]
  %304 = select i1 %157, float %337, float %105
  %305 = select i1 %157, float %563, float %303
  %306 = fadd contract float %304, %305
  %307 = select i1 %157, float %651, float %566
  %308 = select i1 %157, float %514, float %306
  %309 = fmul contract float %307, %308
  %310 = select i1 %157, float %309, float %484
  %311 = select i1 %157, float %568, float %309
  %312 = fadd contract float %310, %311
  %313 = fmul contract float %651, %644
  %314 = fadd contract float %313, %372
  %315 = select i1 %157, float %314, float undef
  %316 = select i1 %159, i1 %157, i1 true
  br i1 %316, label %merged.bb238, label %merged.bb229

merged.bb228:                                     ; preds = %merged.bb250, %merged.bb251
  %317 = phi float [ %653, %merged.bb251 ], [ undef, %merged.bb250 ]
  %318 = select i1 %157, float %37, float %102
  %319 = select i1 %157, float %625, float %317
  %320 = fadd contract float %318, %319
  %321 = select i1 %157, float %651, float %566
  %322 = select i1 %159, float %320, float undef
  %323 = select i1 %159, float %321, float undef
  %merged.select254 = select i1 %159, float %323, float %75
  %merged.select255 = select i1 %159, float %322, float %132
  %324 = fmul contract float %merged.select254, %merged.select255
  %merged.select256 = select i1 %159, float %484, float 0.000000e+00
  %325 = fadd contract float %324, %merged.select256
  %326 = select i1 %157, float %325, float undef
  %327 = select i1 %157, float %111, float %519
  %328 = select i1 %157, float %531, float %324
  %329 = select i1 %159, float %326, float undef
  %330 = select i1 %159, float %327, float undef
  %331 = select i1 %159, float %328, float undef
  %332 = fmul contract float %75, %137
  %333 = select i1 %159, float undef, float %332
  %merged.select257 = select i1 %159, float %330, float %333
  %merged.select258 = select i1 %159, float %331, float 0.000000e+00
  %334 = fadd contract float %merged.select257, %merged.select258
  %merged.select259 = select i1 %159, float %651, float %75
  %merged.select260 = select i1 %159, float %334, float %142
  %335 = fmul contract float %merged.select259, %merged.select260
  %336 = select i1 %157, float %335, float undef
  %337 = select i1 %159, float %336, float undef
  %338 = fadd contract float %335, 0.000000e+00
  %339 = select i1 %159, float undef, float %338
  %340 = select i1 %159, i1 %157, i1 true
  br i1 %340, label %merged.bb227, label %merged.bb248

merged.bb229:                                     ; preds = %merged.bb227
  %341 = load float, float addrspace(1)* %126, align 4, !tbaa !13
  br label %merged.bb238

merged.bb230:                                     ; preds = %merged.bb243
  %342 = load float, float addrspace(1)* %117, align 4, !tbaa !7
  br label %merged.bb233

merged.bb231:                                     ; preds = %merged.bb245
  %343 = tail call i1 @llvm.amdgcn.class.f32(float %150, i32 608) #3
  %344 = select i1 %148, float 0x3EF0000000000000, float 1.000000e+00
  %345 = fneg float %156
  %346 = tail call float @llvm.fma.f32(float %345, float %151, float %150) #3
  %347 = fcmp ogt float %346, 0.000000e+00
  %348 = fneg float %154
  %349 = tail call float @llvm.fma.f32(float %348, float %151, float %150) #3
  %350 = fcmp ole float %349, 0.000000e+00
  %351 = select i1 %350, float %154, float %151
  %352 = select i1 %347, float %156, float %351
  br label %merged.bb249

merged.bb232:                                     ; preds = %merged.bb247
  %353 = load float, float addrspace(1)* %122, align 4, !tbaa !7
  br label %merged.bb234

merged.bb233:                                     ; preds = %merged.bb230, %merged.bb243
  %354 = phi float [ %342, %merged.bb230 ], [ undef, %merged.bb243 ]
  %355 = select i1 %157, float %109, float %32
  %356 = select i1 %157, float %529, float %354
  %357 = fadd contract float %355, %356
  %358 = select i1 %157, float %542, float %548
  %359 = fmul contract float %358, %357
  %360 = select i1 %157, float %359, float %595
  %361 = select i1 %157, float %533, float %359
  %362 = fadd contract float %360, %361
  %363 = select i1 %159, i1 %157, i1 false
  br i1 %363, label %merged.bb239, label %merged.bb244

merged.bb234:                                     ; preds = %merged.bb232, %merged.bb247
  %364 = phi float [ %353, %merged.bb232 ], [ undef, %merged.bb247 ]
  %365 = select i1 %157, float %104, float %37
  %366 = select i1 %157, float %526, float %364
  %367 = fadd contract float %365, %366
  %368 = select i1 %157, float %521, float %566
  %369 = fmul contract float %368, %367
  %370 = select i1 %157, float %369, float %362
  %371 = select i1 %157, float %507, float %369
  %372 = fadd contract float %370, %371
  %373 = select i1 %159, i1 %157, i1 false
  br i1 %373, label %merged.bb250, label %merged.bb246

merged.bb235:                                     ; preds = %merged.bb249
  %374 = fdiv contract float %597, %583
  %375 = fdiv contract float %611, %583
  %376 = fdiv contract float %625, %583
  %377 = fmul contract float %374, %374
  %378 = fmul contract float %375, %375
  %379 = fadd contract float %377, %378
  %380 = fmul contract float %376, %376
  %381 = fadd contract float %379, %380
  %382 = fmul contract float %583, 5.000000e-01
  %383 = fmul contract float %382, %381
  %384 = fsub contract float %639, %383
  %385 = fmul contract float %384, 0x3FD9999980000000
  %386 = fmul contract float %385, 0x3FF6666660000000
  %387 = fdiv contract float %386, %583
  %388 = fcmp olt float %387, 0x39F0000000000000
  %389 = select i1 %388, float 0x41F0000000000000, float 1.000000e+00
  %390 = fmul float %387, %389
  %391 = tail call float @llvm.sqrt.f32(float %390) #3
  %392 = bitcast float %391 to i32
  %393 = add nsw i32 %392, -1
  %394 = bitcast i32 %393 to float
  %395 = add nsw i32 %392, 1
  %396 = bitcast i32 %395 to float
  %397 = tail call i1 @llvm.amdgcn.class.f32(float %390, i32 608) #3
  %398 = select i1 %388, float 0x3EF0000000000000, float 1.000000e+00
  %399 = fneg float %396
  %400 = tail call float @llvm.fma.f32(float %399, float %391, float %390) #3
  %401 = fcmp ogt float %400, 0.000000e+00
  %402 = fneg float %394
  %403 = tail call float @llvm.fma.f32(float %402, float %391, float %390) #3
  %404 = fcmp ole float %403, 0.000000e+00
  %405 = select i1 %404, float %394, float %391
  %406 = select i1 %401, float %396, float %405
  %407 = fmul float %398, %406
  %408 = select i1 %397, float %390, float %407
  %409 = fmul contract float %597, %374
  %410 = fadd contract float %409, %385
  %411 = fmul contract float %374, %611
  %412 = fmul contract float %374, %625
  %413 = fmul contract float %611, %375
  %414 = fadd contract float %413, %385
  %415 = fmul contract float %375, %625
  %416 = fmul contract float %625, %376
  %417 = fadd contract float %416, %385
  %418 = fadd contract float %639, %385
  %419 = fmul contract float %374, %418
  %420 = fmul contract float %375, %418
  %421 = fmul contract float %376, %418
  %422 = fmul contract float %580, 0xBFC99999A0000000
  %423 = fmul contract float %422, 5.000000e-01
  %424 = fcmp olt float %381, 0x39F0000000000000
  %425 = select i1 %424, float 0x41F0000000000000, float 1.000000e+00
  %426 = fmul float %381, %425
  %427 = tail call float @llvm.sqrt.f32(float %426) #3
  %428 = bitcast float %427 to i32
  %429 = add nsw i32 %428, -1
  %430 = bitcast i32 %429 to float
  %431 = add nsw i32 %428, 1
  %432 = bitcast i32 %431 to float
  %433 = tail call i1 @llvm.amdgcn.class.f32(float %426, i32 608) #3
  %434 = select i1 %424, float 0x3EF0000000000000, float 1.000000e+00
  %435 = fneg float %432
  %436 = tail call float @llvm.fma.f32(float %435, float %427, float %426) #3
  %437 = fcmp ogt float %436, 0.000000e+00
  %438 = fneg float %430
  %439 = tail call float @llvm.fma.f32(float %438, float %427, float %426) #3
  %440 = fcmp ole float %439, 0.000000e+00
  %441 = select i1 %440, float %430, float %427
  %442 = select i1 %437, float %432, float %441
  %443 = fmul float %434, %442
  %444 = select i1 %433, float %426, float %443
  %445 = fadd contract float %71, %444
  %446 = fadd contract float %98, %445
  %447 = fadd contract float %446, %408
  %448 = fmul contract float %423, %447
  %449 = fsub contract float %23, %583
  %450 = fmul contract float %449, %448
  %451 = fadd contract float %450, 0.000000e+00
  %452 = fsub contract float %42, %639
  %453 = fmul contract float %452, %448
  %454 = fadd contract float %453, 0.000000e+00
  %455 = fsub contract float %27, %597
  %456 = fmul contract float %455, %448
  %457 = fadd contract float %456, 0.000000e+00
  %458 = fsub contract float %32, %611
  %459 = fmul contract float %458, %448
  %460 = fadd contract float %459, 0.000000e+00
  %461 = fsub contract float %37, %625
  %462 = fmul contract float %461, %448
  br label %merged.bb243

merged.bb236:                                     ; preds = %merged.bb238, %unify.bb
  %463 = phi float [ %372, %merged.bb238 ], [ 0.000000e+00, %unify.bb ]
  %464 = phi float [ %493, %merged.bb238 ], [ 0.000000e+00, %unify.bb ]
  %465 = phi float [ %312, %merged.bb238 ], [ 0.000000e+00, %unify.bb ]
  %466 = phi float [ %334, %merged.bb238 ], [ 0.000000e+00, %unify.bb ]
  %467 = phi float [ %649, %merged.bb238 ], [ 0.000000e+00, %unify.bb ]
  %468 = phi float [ %329, %merged.bb238 ], [ undef, %unify.bb ]
  %469 = phi float [ %306, %merged.bb238 ], [ undef, %unify.bb ]
  %470 = phi float [ %312, %merged.bb238 ], [ undef, %unify.bb ]
  %471 = phi float [ %315, %merged.bb238 ], [ undef, %unify.bb ]
  %472 = phi float [ %493, %merged.bb238 ], [ undef, %unify.bb ]
  %473 = phi float [ undef, %unify.bb ], [ %339, %merged.bb238 ]
  %474 = phi float [ undef, %unify.bb ], [ %334, %merged.bb238 ]
  %475 = phi float [ undef, %unify.bb ], [ %325, %merged.bb238 ]
  br i1 %159, label %merged.bb29, label %merged.branch.split262

merged.bb237:                                     ; preds = %merged.bb240, %merged.bb242
  %476 = phi float [ %509, %merged.bb240 ], [ undef, %merged.bb242 ]
  %477 = select i1 %157, float %32, float %104
  %478 = select i1 %157, float %611, float %476
  %479 = fadd contract float %477, %478
  %480 = select i1 %157, float %521, float %548
  %481 = fmul contract float %480, %479
  %482 = select i1 %157, float %481, float %637
  %483 = select i1 %157, float %550, float %481
  %484 = fadd contract float %482, %483
  %485 = select i1 %159, i1 %157, i1 false
  br i1 %485, label %merged.bb247, label %merged.bb253

merged.bb238:                                     ; preds = %merged.bb227, %merged.bb229
  %486 = phi float [ %341, %merged.bb229 ], [ undef, %merged.bb227 ]
  %487 = select i1 %157, float %528, float %486
  %488 = fadd contract float %107, %487
  %489 = select i1 %157, float %651, float %566
  %490 = fmul contract float %489, %488
  %491 = select i1 %157, float %490, float %563
  %492 = select i1 %157, float %649, float %490
  %493 = fadd contract float %491, %492
  br label %merged.bb236

merged.bb239:                                     ; preds = %merged.bb233, %merged.bb244
  %494 = phi float [ %552, %merged.bb244 ], [ undef, %merged.bb233 ]
  %495 = select i1 %157, float %100, float %110
  %496 = select i1 %157, float %523, float %494
  %497 = fadd contract float %495, %496
  %498 = select i1 %157, float %542, float %548
  %499 = fmul contract float %498, %497
  %500 = fadd contract float %499, %534
  %501 = select i1 %157, float %500, float undef
  %502 = select i1 %157, float %101, float %609
  %503 = select i1 %157, float %524, float %499
  %504 = fadd contract float %502, %503
  %505 = fmul contract float %542, %504
  %506 = fadd contract float %505, %535
  %507 = select i1 %157, float %506, float undef
  %508 = select i1 %159, i1 %157, i1 false
  br i1 %508, label %merged.bb242, label %merged.bb241

merged.bb240:                                     ; preds = %merged.bb242
  %509 = load float, float addrspace(1)* %120, align 4, !tbaa !13
  br label %merged.bb237

merged.bb241:                                     ; preds = %merged.bb239
  %510 = load float, float addrspace(1)* %119, align 4, !tbaa !13
  br label %merged.bb242

merged.bb242:                                     ; preds = %merged.bb239, %merged.bb241
  %511 = phi float [ %510, %merged.bb241 ], [ undef, %merged.bb239 ]
  %512 = select i1 %157, float %102, float %101
  %513 = select i1 %157, float %525, float %511
  %514 = fadd contract float %512, %513
  %515 = select i1 %157, float %542, float %548
  %516 = fmul contract float %515, %514
  %517 = select i1 %157, float %516, float %623
  %518 = select i1 %157, float %539, float %516
  %519 = fadd contract float %517, %518
  %520 = fmul contract float %137, 5.000000e-01
  %521 = select i1 %157, float %520, float undef
  %522 = select i1 %159, i1 %157, i1 false
  br i1 %522, label %merged.bb237, label %merged.bb240

merged.bb243:                                     ; preds = %merged.bb235, %merged.bb249
  %523 = phi float [ %410, %merged.bb235 ], [ undef, %merged.bb249 ]
  %524 = phi float [ %411, %merged.bb235 ], [ undef, %merged.bb249 ]
  %525 = phi float [ %412, %merged.bb235 ], [ undef, %merged.bb249 ]
  %526 = phi float [ %414, %merged.bb235 ], [ undef, %merged.bb249 ]
  %527 = phi float [ %415, %merged.bb235 ], [ undef, %merged.bb249 ]
  %528 = phi float [ %417, %merged.bb235 ], [ undef, %merged.bb249 ]
  %529 = phi float [ %419, %merged.bb235 ], [ undef, %merged.bb249 ]
  %530 = phi float [ %420, %merged.bb235 ], [ undef, %merged.bb249 ]
  %531 = phi float [ %421, %merged.bb235 ], [ undef, %merged.bb249 ]
  %532 = phi float [ %451, %merged.bb235 ], [ undef, %merged.bb249 ]
  %533 = phi float [ %454, %merged.bb235 ], [ undef, %merged.bb249 ]
  %534 = phi float [ %457, %merged.bb235 ], [ undef, %merged.bb249 ]
  %535 = phi float [ %460, %merged.bb235 ], [ undef, %merged.bb249 ]
  %536 = phi float [ %462, %merged.bb235 ], [ undef, %merged.bb249 ]
  %537 = select i1 %157, float %536, float %102
  %538 = select i1 %157, float 0.000000e+00, float %639
  %539 = fadd contract float %537, %538
  %540 = select i1 %157, float %132, float %576
  %541 = select i1 %157, float 5.000000e-01, float %539
  %542 = fmul contract float %540, %541
  %543 = select i1 %157, float %27, float %542
  %544 = select i1 %157, float %597, float 0.000000e+00
  %545 = fadd contract float %543, %544
  %546 = select i1 %157, float %542, float %137
  %547 = select i1 %157, float %545, float 5.000000e-01
  %548 = fmul contract float %546, %547
  %549 = fadd contract float %548, %532
  %550 = select i1 %157, float %549, float undef
  %551 = select i1 %159, i1 %157, i1 false
  br i1 %551, label %merged.bb233, label %merged.bb230

merged.bb244:                                     ; preds = %merged.bb233
  %552 = load float, float addrspace(1)* %118, align 4, !tbaa !13
  br label %merged.bb239

merged.bb245:                                     ; preds = %unify.bb
  %553 = select i1 %159, i1 %157, i1 true
  br i1 %553, label %merged.bb231, label %merged.bb249

merged.bb246:                                     ; preds = %merged.bb234
  %554 = load float, float addrspace(1)* %123, align 4, !tbaa !13
  br label %merged.bb250

merged.bb247:                                     ; preds = %merged.bb237, %merged.bb253
  %555 = phi float [ %654, %merged.bb253 ], [ undef, %merged.bb237 ]
  %556 = select i1 %157, float %110, float %105
  %557 = select i1 %157, float %530, float %555
  %558 = fadd contract float %556, %557
  %559 = select i1 %157, float %521, float %548
  %560 = fmul contract float %559, %558
  %561 = select i1 %157, float %560, float %545
  %562 = select i1 %157, float %362, float %560
  %563 = fadd contract float %561, %562
  %564 = select i1 %157, float %521, float %142
  %565 = select i1 %157, float %504, float 5.000000e-01
  %566 = fmul contract float %564, %565
  %567 = fadd contract float %566, %501
  %568 = select i1 %157, float %567, float undef
  %569 = select i1 %159, i1 %157, i1 false
  br i1 %569, label %merged.bb234, label %merged.bb232

merged.bb248:                                     ; preds = %merged.bb228
  %570 = load float, float addrspace(1)* %125, align 4, !tbaa !13
  br label %merged.bb227

merged.bb249:                                     ; preds = %merged.bb231, %merged.bb245
  %571 = phi i1 [ %343, %merged.bb231 ], [ undef, %merged.bb245 ]
  %572 = phi float [ %344, %merged.bb231 ], [ undef, %merged.bb245 ]
  %573 = phi float [ %352, %merged.bb231 ], [ undef, %merged.bb245 ]
  %574 = select i1 %157, float %572, float %132
  %575 = select i1 %157, float %573, float 5.000000e-01
  %576 = fmul float %574, %575
  %577 = select i1 %571, float %150, float %576
  %578 = zext i32 %130 to i64
  %579 = getelementptr inbounds float, float addrspace(1)* %3, i64 %578
  %580 = select i1 %157, float %577, float undef
  %581 = select i1 %157, float addrspace(1)* %579, float addrspace(1)* undef
  %582 = select i1 %157, float addrspace(1)* %581, float addrspace(1)* %112
  %583 = load float, float addrspace(1)* %582, align 4, !tbaa !7
  %584 = add nsw i32 %130, %0
  %585 = select i1 %157, i32 %584, i32 undef
  %586 = fadd contract float %27, %583
  %587 = select i1 %157, float undef, float %586
  %588 = sext i32 %585 to i64
  %589 = select i1 %157, i64 %588, i64 undef
  %590 = fmul contract float %576, %587
  %591 = select i1 %157, float undef, float %590
  %592 = getelementptr inbounds float, float addrspace(1)* %3, i64 %589
  %593 = select i1 %157, float addrspace(1)* %592, float addrspace(1)* undef
  %594 = fadd contract float %591, 0.000000e+00
  %595 = select i1 %157, float undef, float %594
  %596 = select i1 %157, float addrspace(1)* %593, float addrspace(1)* %113
  %597 = load float, float addrspace(1)* %596, align 4, !tbaa !7
  %598 = add nsw i32 %130, %28
  %599 = select i1 %157, i32 %598, i32 undef
  %600 = fadd contract float %109, %597
  %601 = select i1 %157, float undef, float %600
  %602 = sext i32 %599 to i64
  %603 = select i1 %157, i64 %602, i64 undef
  %604 = fmul contract float %576, %601
  %605 = select i1 %157, float undef, float %604
  %606 = getelementptr inbounds float, float addrspace(1)* %3, i64 %603
  %607 = select i1 %157, float addrspace(1)* %606, float addrspace(1)* undef
  %608 = fadd contract float %605, 0.000000e+00
  %609 = select i1 %157, float undef, float %608
  %610 = select i1 %157, float addrspace(1)* %607, float addrspace(1)* %114
  %611 = load float, float addrspace(1)* %610, align 4, !tbaa !7
  %612 = add nsw i32 %130, %33
  %613 = select i1 %157, i32 %612, i32 undef
  %614 = fadd contract float %100, %611
  %615 = select i1 %157, float undef, float %614
  %616 = sext i32 %613 to i64
  %617 = select i1 %157, i64 %616, i64 undef
  %618 = fmul contract float %576, %615
  %619 = select i1 %157, float undef, float %618
  %620 = getelementptr inbounds float, float addrspace(1)* %3, i64 %617
  %621 = select i1 %157, float addrspace(1)* %620, float addrspace(1)* undef
  %622 = fadd contract float %619, 0.000000e+00
  %623 = select i1 %157, float undef, float %622
  %624 = select i1 %157, float addrspace(1)* %621, float addrspace(1)* %115
  %625 = load float, float addrspace(1)* %624, align 4, !tbaa !7
  %626 = add nsw i32 %130, %38
  %627 = select i1 %157, i32 %626, i32 undef
  %628 = fadd contract float %101, %625
  %629 = select i1 %157, float undef, float %628
  %630 = sext i32 %627 to i64
  %631 = select i1 %157, i64 %630, i64 undef
  %632 = fmul contract float %576, %629
  %633 = select i1 %157, float undef, float %632
  %634 = getelementptr inbounds float, float addrspace(1)* %3, i64 %631
  %635 = select i1 %157, float addrspace(1)* %634, float addrspace(1)* undef
  %636 = fadd contract float %633, 0.000000e+00
  %637 = select i1 %157, float undef, float %636
  %638 = select i1 %157, float addrspace(1)* %635, float addrspace(1)* %116
  %639 = load float, float addrspace(1)* %638, align 4, !tbaa !7
  %640 = select i1 %159, i1 %157, i1 true
  br i1 %640, label %merged.bb235, label %merged.bb243

merged.bb250:                                     ; preds = %merged.bb234, %merged.bb246
  %641 = phi float [ %554, %merged.bb246 ], [ undef, %merged.bb234 ]
  %642 = select i1 %157, float %105, float %111
  %643 = select i1 %157, float %527, float %641
  %644 = fadd contract float %642, %643
  %645 = select i1 %157, float %521, float %566
  %646 = fmul contract float %645, %644
  %647 = select i1 %157, float %646, float %504
  %648 = select i1 %157, float %519, float %646
  %649 = fadd contract float %647, %648
  %650 = fmul contract float %142, 5.000000e-01
  %651 = select i1 %157, float %650, float undef
  %652 = select i1 %159, i1 %157, i1 false
  br i1 %652, label %merged.bb228, label %merged.bb251

merged.bb251:                                     ; preds = %merged.bb250
  %653 = load float, float addrspace(1)* %124, align 4, !tbaa !13
  br label %merged.bb228

merged.bb253:                                     ; preds = %merged.bb237
  %654 = load float, float addrspace(1)* %121, align 4, !tbaa !13
  br label %merged.bb247

merged.branch.split262:                           ; preds = %merged.bb236
  br label %merged.bb29

merged.bb283:                                     ; preds = %merged.bb486, %merged.branch.split510
  %655 = phi float [ undef, %merged.branch.split510 ], [ %764, %merged.bb486 ]
  %656 = phi float [ undef, %merged.branch.split510 ], [ %763, %merged.bb486 ]
  %657 = phi float [ undef, %merged.branch.split510 ], [ %762, %merged.bb486 ]
  %658 = phi float [ undef, %merged.branch.split510 ], [ %761, %merged.bb486 ]
  %659 = phi float [ undef, %merged.branch.split510 ], [ %760, %merged.bb486 ]
  %660 = phi float [ %167, %merged.branch.split510 ], [ %759, %merged.bb486 ]
  %661 = phi float [ %767, %merged.branch.split510 ], [ %758, %merged.bb486 ]
  %662 = phi float [ %766, %merged.branch.split510 ], [ %757, %merged.bb486 ]
  %663 = phi float [ %765, %merged.branch.split510 ], [ %756, %merged.bb486 ]
  %664 = phi float [ %163, %merged.branch.split510 ], [ %755, %merged.bb486 ]
  br i1 %196, label %NewDefault1, label %merged.branch.split288

merged.branch.split288:                           ; preds = %merged.bb283
  br label %NewDefault1

merged.bb483:                                     ; preds = %merged.bb502
  %665 = tail call i1 @llvm.amdgcn.class.f32(float %189, i32 608) #3
  %666 = select i1 %187, float 0x3EF0000000000000, float 1.000000e+00
  %667 = fneg float %195
  %668 = tail call float @llvm.fma.f32(float %667, float %190, float %189) #3
  %669 = fcmp ogt float %668, 0.000000e+00
  %670 = fneg float %193
  %671 = tail call float @llvm.fma.f32(float %670, float %190, float %189) #3
  %672 = fcmp ole float %671, 0.000000e+00
  %673 = select i1 %672, float %193, float %190
  %674 = select i1 %669, float %195, float %673
  br label %merged.bb484

merged.bb484:                                     ; preds = %merged.bb483, %merged.bb502
  %675 = phi i1 [ %665, %merged.bb483 ], [ undef, %merged.bb502 ]
  %676 = phi float [ %666, %merged.bb483 ], [ undef, %merged.bb502 ]
  %677 = phi float [ %674, %merged.bb483 ], [ undef, %merged.bb502 ]
  %678 = select i1 %196, float %676, float %171
  %679 = select i1 %196, float %677, float 5.000000e-01
  %680 = fmul float %678, %679
  %681 = select i1 %675, float %189, float %680
  %682 = zext i32 %169 to i64
  %683 = getelementptr inbounds float, float addrspace(1)* %3, i64 %682
  %684 = select i1 %196, float %681, float undef
  %685 = select i1 %196, float addrspace(1)* %683, float addrspace(1)* undef
  %686 = select i1 %196, float addrspace(1)* %685, float addrspace(1)* %112
  %687 = load float, float addrspace(1)* %686, align 4, !tbaa !7
  %688 = add nsw i32 %169, %0
  %689 = select i1 %196, i32 %688, i32 undef
  %690 = fadd contract float %27, %687
  %691 = select i1 %196, float undef, float %690
  %692 = sext i32 %689 to i64
  %693 = select i1 %196, i64 %692, i64 undef
  %694 = fmul contract float %680, %691
  %695 = select i1 %196, float undef, float %694
  %696 = getelementptr inbounds float, float addrspace(1)* %3, i64 %693
  %697 = select i1 %196, float addrspace(1)* %696, float addrspace(1)* undef
  %698 = fadd contract float %163, %695
  %699 = select i1 %196, float undef, float %698
  %700 = select i1 %196, float addrspace(1)* %697, float addrspace(1)* %113
  %701 = load float, float addrspace(1)* %700, align 4, !tbaa !7
  %702 = add nsw i32 %169, %28
  %703 = select i1 %196, i32 %702, i32 undef
  %704 = fadd contract float %109, %701
  %705 = select i1 %196, float undef, float %704
  %706 = sext i32 %703 to i64
  %707 = select i1 %196, i64 %706, i64 undef
  %708 = fmul contract float %680, %705
  %709 = select i1 %196, float undef, float %708
  %710 = getelementptr inbounds float, float addrspace(1)* %3, i64 %707
  %711 = select i1 %196, float addrspace(1)* %710, float addrspace(1)* undef
  %712 = fadd contract float %167, %709
  %713 = select i1 %196, float undef, float %712
  %714 = select i1 %196, float addrspace(1)* %711, float addrspace(1)* %114
  %715 = load float, float addrspace(1)* %714, align 4, !tbaa !7
  %716 = add nsw i32 %169, %33
  %717 = select i1 %196, i32 %716, i32 undef
  %718 = fadd contract float %100, %715
  %719 = select i1 %196, float undef, float %718
  %720 = sext i32 %717 to i64
  %721 = select i1 %196, i64 %720, i64 undef
  %722 = fmul contract float %680, %719
  %723 = select i1 %196, float undef, float %722
  %724 = getelementptr inbounds float, float addrspace(1)* %3, i64 %721
  %725 = select i1 %196, float addrspace(1)* %724, float addrspace(1)* undef
  %726 = fadd contract float %166, %723
  %727 = select i1 %196, float undef, float %726
  %728 = select i1 %196, float addrspace(1)* %725, float addrspace(1)* %115
  %729 = load float, float addrspace(1)* %728, align 4, !tbaa !7
  %730 = add nsw i32 %169, %38
  %731 = select i1 %196, i32 %730, i32 undef
  %732 = fadd contract float %101, %729
  %733 = select i1 %196, float undef, float %732
  %734 = sext i32 %731 to i64
  %735 = select i1 %196, i64 %734, i64 undef
  %736 = fmul contract float %680, %733
  %737 = select i1 %196, float undef, float %736
  %738 = getelementptr inbounds float, float addrspace(1)* %3, i64 %735
  %739 = select i1 %196, float addrspace(1)* %738, float addrspace(1)* undef
  %740 = fadd contract float %165, %737
  %741 = select i1 %196, float undef, float %740
  %742 = select i1 %196, float addrspace(1)* %739, float addrspace(1)* %116
  %743 = load float, float addrspace(1)* %742, align 4, !tbaa !7
  %744 = select i1 %198, i1 %196, i1 true
  br i1 %744, label %merged.bb492, label %merged.bb487

merged.bb485:                                     ; preds = %merged.bb490, %merged.bb496
  %745 = phi float [ %813, %merged.bb490 ], [ undef, %merged.bb496 ]
  %746 = select i1 %196, float %104, float %37
  %747 = select i1 %196, float %771, float %745
  %748 = fadd contract float %746, %747
  %749 = select i1 %196, float %914, float %929
  %750 = fmul contract float %749, %748
  %751 = select i1 %196, float %750, float %964
  %752 = select i1 %196, float %811, float %750
  %753 = fadd contract float %751, %752
  %754 = select i1 %198, i1 %196, i1 false
  br i1 %754, label %merged.bb499, label %merged.bb501

merged.bb486:                                     ; preds = %merged.branch.split, %merged.bb504
  %755 = phi float [ %753, %merged.bb504 ], [ %163, %merged.branch.split ]
  %756 = phi float [ %999, %merged.bb504 ], [ %164, %merged.branch.split ]
  %757 = phi float [ %1009, %merged.bb504 ], [ %165, %merged.branch.split ]
  %758 = phi float [ %985, %merged.bb504 ], [ %166, %merged.branch.split ]
  %759 = phi float [ %952, %merged.bb504 ], [ %167, %merged.branch.split ]
  %760 = phi float [ undef, %merged.branch.split ], [ %980, %merged.bb504 ]
  %761 = phi float [ undef, %merged.branch.split ], [ %1003, %merged.bb504 ]
  %762 = phi float [ undef, %merged.branch.split ], [ %1009, %merged.bb504 ]
  %763 = phi float [ undef, %merged.branch.split ], [ %1012, %merged.bb504 ]
  %764 = phi float [ undef, %merged.branch.split ], [ %999, %merged.bb504 ]
  %765 = phi float [ %990, %merged.bb504 ], [ undef, %merged.branch.split ]
  %766 = phi float [ %985, %merged.bb504 ], [ undef, %merged.branch.split ]
  %767 = phi float [ %976, %merged.bb504 ], [ undef, %merged.branch.split ]
  br i1 %198, label %merged.bb283, label %merged.branch.split510

merged.bb487:                                     ; preds = %merged.bb484, %merged.bb492
  %768 = phi float [ %851, %merged.bb492 ], [ undef, %merged.bb484 ]
  %769 = phi float [ %852, %merged.bb492 ], [ undef, %merged.bb484 ]
  %770 = phi float [ %853, %merged.bb492 ], [ undef, %merged.bb484 ]
  %771 = phi float [ %855, %merged.bb492 ], [ undef, %merged.bb484 ]
  %772 = phi float [ %856, %merged.bb492 ], [ undef, %merged.bb484 ]
  %773 = phi float [ %858, %merged.bb492 ], [ undef, %merged.bb484 ]
  %774 = phi float [ %860, %merged.bb492 ], [ undef, %merged.bb484 ]
  %775 = phi float [ %861, %merged.bb492 ], [ undef, %merged.bb484 ]
  %776 = phi float [ %862, %merged.bb492 ], [ undef, %merged.bb484 ]
  %777 = phi float [ %892, %merged.bb492 ], [ undef, %merged.bb484 ]
  %778 = phi float [ %895, %merged.bb492 ], [ undef, %merged.bb484 ]
  %779 = phi float [ %898, %merged.bb492 ], [ undef, %merged.bb484 ]
  %780 = phi float [ %901, %merged.bb492 ], [ undef, %merged.bb484 ]
  %781 = phi float [ %903, %merged.bb492 ], [ undef, %merged.bb484 ]
  %782 = select i1 %196, float %164, float %102
  %783 = select i1 %196, float %781, float %743
  %784 = fadd contract float %782, %783
  %785 = select i1 %196, float %171, float %680
  %786 = select i1 %196, float 5.000000e-01, float %784
  %787 = fmul contract float %785, %786
  %788 = select i1 %196, float %27, float %164
  %789 = select i1 %196, float %701, float %787
  %790 = fadd contract float %788, %789
  %791 = select i1 %196, float %787, float %176
  %792 = select i1 %196, float %790, float 5.000000e-01
  %793 = fmul contract float %791, %792
  %794 = fadd contract float %793, %777
  %795 = select i1 %196, float %794, float undef
  %796 = select i1 %198, i1 %196, i1 false
  br i1 %796, label %merged.bb500, label %merged.bb495

merged.bb488:                                     ; preds = %merged.bb489
  %797 = load float, float addrspace(1)* %119, align 4, !tbaa !13
  br label %merged.bb493

merged.bb489:                                     ; preds = %merged.bb491, %merged.bb500
  %798 = phi float [ %814, %merged.bb491 ], [ undef, %merged.bb500 ]
  %799 = select i1 %196, float %100, float %110
  %800 = select i1 %196, float %768, float %798
  %801 = fadd contract float %799, %800
  %802 = select i1 %196, float %787, float %793
  %803 = fmul contract float %802, %801
  %804 = fadd contract float %803, %779
  %805 = select i1 %196, float %804, float undef
  %806 = select i1 %196, float %101, float %713
  %807 = select i1 %196, float %769, float %803
  %808 = fadd contract float %806, %807
  %809 = fmul contract float %787, %808
  %810 = fadd contract float %809, %780
  %811 = select i1 %196, float %810, float undef
  %812 = select i1 %198, i1 %196, i1 false
  br i1 %812, label %merged.bb493, label %merged.bb488

merged.bb490:                                     ; preds = %merged.bb496
  %813 = load float, float addrspace(1)* %122, align 4, !tbaa !7
  br label %merged.bb485

merged.bb491:                                     ; preds = %merged.bb500
  %814 = load float, float addrspace(1)* %118, align 4, !tbaa !13
  br label %merged.bb489

merged.bb492:                                     ; preds = %merged.bb484
  %815 = fdiv contract float %701, %687
  %816 = fdiv contract float %715, %687
  %817 = fdiv contract float %729, %687
  %818 = fmul contract float %815, %815
  %819 = fmul contract float %816, %816
  %820 = fadd contract float %818, %819
  %821 = fmul contract float %817, %817
  %822 = fadd contract float %820, %821
  %823 = fmul contract float %687, 5.000000e-01
  %824 = fmul contract float %823, %822
  %825 = fsub contract float %743, %824
  %826 = fmul contract float %825, 0x3FD9999980000000
  %827 = fmul contract float %826, 0x3FF6666660000000
  %828 = fdiv contract float %827, %687
  %829 = fcmp olt float %828, 0x39F0000000000000
  %830 = select i1 %829, float 0x41F0000000000000, float 1.000000e+00
  %831 = fmul float %828, %830
  %832 = tail call float @llvm.sqrt.f32(float %831) #3
  %833 = bitcast float %832 to i32
  %834 = add nsw i32 %833, -1
  %835 = bitcast i32 %834 to float
  %836 = add nsw i32 %833, 1
  %837 = bitcast i32 %836 to float
  %838 = tail call i1 @llvm.amdgcn.class.f32(float %831, i32 608) #3
  %839 = select i1 %829, float 0x3EF0000000000000, float 1.000000e+00
  %840 = fneg float %837
  %841 = tail call float @llvm.fma.f32(float %840, float %832, float %831) #3
  %842 = fcmp ogt float %841, 0.000000e+00
  %843 = fneg float %835
  %844 = tail call float @llvm.fma.f32(float %843, float %832, float %831) #3
  %845 = fcmp ole float %844, 0.000000e+00
  %846 = select i1 %845, float %835, float %832
  %847 = select i1 %842, float %837, float %846
  %848 = fmul float %839, %847
  %849 = select i1 %838, float %831, float %848
  %850 = fmul contract float %701, %815
  %851 = fadd contract float %850, %826
  %852 = fmul contract float %815, %715
  %853 = fmul contract float %815, %729
  %854 = fmul contract float %715, %816
  %855 = fadd contract float %854, %826
  %856 = fmul contract float %816, %729
  %857 = fmul contract float %729, %817
  %858 = fadd contract float %857, %826
  %859 = fadd contract float %743, %826
  %860 = fmul contract float %815, %859
  %861 = fmul contract float %816, %859
  %862 = fmul contract float %817, %859
  %863 = fmul contract float %684, 0xBFC99999A0000000
  %864 = fmul contract float %863, 5.000000e-01
  %865 = fcmp olt float %822, 0x39F0000000000000
  %866 = select i1 %865, float 0x41F0000000000000, float 1.000000e+00
  %867 = fmul float %822, %866
  %868 = tail call float @llvm.sqrt.f32(float %867) #3
  %869 = bitcast float %868 to i32
  %870 = add nsw i32 %869, -1
  %871 = bitcast i32 %870 to float
  %872 = add nsw i32 %869, 1
  %873 = bitcast i32 %872 to float
  %874 = tail call i1 @llvm.amdgcn.class.f32(float %867, i32 608) #3
  %875 = select i1 %865, float 0x3EF0000000000000, float 1.000000e+00
  %876 = fneg float %873
  %877 = tail call float @llvm.fma.f32(float %876, float %868, float %867) #3
  %878 = fcmp ogt float %877, 0.000000e+00
  %879 = fneg float %871
  %880 = tail call float @llvm.fma.f32(float %879, float %868, float %867) #3
  %881 = fcmp ole float %880, 0.000000e+00
  %882 = select i1 %881, float %871, float %868
  %883 = select i1 %878, float %873, float %882
  %884 = fmul float %875, %883
  %885 = select i1 %874, float %867, float %884
  %886 = fadd contract float %71, %885
  %887 = fadd contract float %98, %886
  %888 = fadd contract float %887, %849
  %889 = fmul contract float %864, %888
  %890 = fsub contract float %23, %687
  %891 = fmul contract float %890, %889
  %892 = fadd contract float %163, %891
  %893 = fsub contract float %42, %743
  %894 = fmul contract float %893, %889
  %895 = fadd contract float %167, %894
  %896 = fsub contract float %27, %701
  %897 = fmul contract float %896, %889
  %898 = fadd contract float %166, %897
  %899 = fsub contract float %32, %715
  %900 = fmul contract float %899, %889
  %901 = fadd contract float %165, %900
  %902 = fsub contract float %37, %729
  %903 = fmul contract float %902, %889
  br label %merged.bb487

merged.bb493:                                     ; preds = %merged.bb488, %merged.bb489
  %904 = phi float [ %797, %merged.bb488 ], [ undef, %merged.bb489 ]
  %905 = select i1 %196, float %102, float %101
  %906 = select i1 %196, float %770, float %904
  %907 = fadd contract float %905, %906
  %908 = select i1 %196, float %787, float %793
  %909 = fmul contract float %908, %907
  %910 = select i1 %196, float %909, float %727
  %911 = select i1 %196, float %784, float %909
  %912 = fadd contract float %910, %911
  %913 = fmul contract float %176, 5.000000e-01
  %914 = select i1 %196, float %913, float undef
  %915 = select i1 %198, i1 %196, i1 false
  br i1 %915, label %merged.bb497, label %merged.bb494

merged.bb494:                                     ; preds = %merged.bb493
  %916 = load float, float addrspace(1)* %120, align 4, !tbaa !13
  br label %merged.bb497

merged.bb495:                                     ; preds = %merged.bb487
  %917 = load float, float addrspace(1)* %117, align 4, !tbaa !7
  br label %merged.bb500

merged.bb496:                                     ; preds = %merged.bb497, %merged.bb498
  %918 = phi float [ %943, %merged.bb498 ], [ undef, %merged.bb497 ]
  %919 = select i1 %196, float %110, float %105
  %920 = select i1 %196, float %775, float %918
  %921 = fadd contract float %919, %920
  %922 = select i1 %196, float %914, float %793
  %923 = fmul contract float %922, %921
  %924 = select i1 %196, float %923, float %790
  %925 = select i1 %196, float %964, float %923
  %926 = fadd contract float %924, %925
  %927 = select i1 %196, float %914, float %181
  %928 = select i1 %196, float %808, float 5.000000e-01
  %929 = fmul contract float %927, %928
  %930 = fadd contract float %929, %805
  %931 = select i1 %196, float %930, float undef
  %932 = select i1 %198, i1 %196, i1 false
  br i1 %932, label %merged.bb485, label %merged.bb490

merged.bb497:                                     ; preds = %merged.bb493, %merged.bb494
  %933 = phi float [ %916, %merged.bb494 ], [ undef, %merged.bb493 ]
  %934 = select i1 %196, float %32, float %104
  %935 = select i1 %196, float %715, float %933
  %936 = fadd contract float %934, %935
  %937 = select i1 %196, float %914, float %793
  %938 = fmul contract float %937, %936
  %939 = select i1 %196, float %938, float %741
  %940 = select i1 %196, float %795, float %938
  %941 = fadd contract float %939, %940
  %942 = select i1 %198, i1 %196, i1 false
  br i1 %942, label %merged.bb496, label %merged.bb498

merged.bb498:                                     ; preds = %merged.bb497
  %943 = load float, float addrspace(1)* %121, align 4, !tbaa !13
  br label %merged.bb496

merged.bb499:                                     ; preds = %merged.bb485, %merged.bb501
  %944 = phi float [ %966, %merged.bb501 ], [ undef, %merged.bb485 ]
  %945 = select i1 %196, float %105, float %111
  %946 = select i1 %196, float %772, float %944
  %947 = fadd contract float %945, %946
  %948 = select i1 %196, float %914, float %929
  %949 = fmul contract float %948, %947
  %950 = select i1 %196, float %949, float %808
  %951 = select i1 %196, float %912, float %949
  %952 = fadd contract float %950, %951
  %953 = fmul contract float %181, 5.000000e-01
  %954 = select i1 %196, float %953, float undef
  %955 = select i1 %198, i1 %196, i1 false
  br i1 %955, label %merged.bb503, label %merged.bb507

merged.bb500:                                     ; preds = %merged.bb487, %merged.bb495
  %956 = phi float [ %917, %merged.bb495 ], [ undef, %merged.bb487 ]
  %957 = select i1 %196, float %109, float %32
  %958 = select i1 %196, float %774, float %956
  %959 = fadd contract float %957, %958
  %960 = select i1 %196, float %787, float %793
  %961 = fmul contract float %960, %959
  %962 = select i1 %196, float %961, float %699
  %963 = select i1 %196, float %778, float %961
  %964 = fadd contract float %962, %963
  %965 = select i1 %198, i1 %196, i1 false
  br i1 %965, label %merged.bb489, label %merged.bb491

merged.bb501:                                     ; preds = %merged.bb485
  %966 = load float, float addrspace(1)* %123, align 4, !tbaa !13
  br label %merged.bb499

merged.bb502:                                     ; preds = %merged.branch.split
  %967 = select i1 %198, i1 %196, i1 true
  br i1 %967, label %merged.bb483, label %merged.bb484

merged.bb503:                                     ; preds = %merged.bb499, %merged.bb507
  %968 = phi float [ %1015, %merged.bb507 ], [ undef, %merged.bb499 ]
  %969 = select i1 %196, float %37, float %102
  %970 = select i1 %196, float %729, float %968
  %971 = fadd contract float %969, %970
  %972 = select i1 %196, float %954, float %929
  %973 = select i1 %198, float %971, float undef
  %974 = select i1 %198, float %972, float undef
  %merged.select511 = select i1 %198, float %974, float %75
  %merged.select512 = select i1 %198, float %973, float %171
  %975 = fmul contract float %merged.select511, %merged.select512
  %merged.select513 = select i1 %198, float %975, float %166
  %merged.select514 = select i1 %198, float %941, float %975
  %976 = fadd contract float %merged.select513, %merged.select514
  %977 = select i1 %196, float %976, float undef
  %978 = select i1 %196, float %111, float %912
  %979 = select i1 %196, float %776, float %975
  %980 = select i1 %198, float %977, float undef
  %981 = select i1 %198, float %978, float undef
  %982 = select i1 %198, float %979, float undef
  %983 = fmul contract float %75, %176
  %984 = select i1 %198, float undef, float %983
  %merged.select515 = select i1 %198, float %981, float %165
  %merged.select516 = select i1 %198, float %982, float %984
  %985 = fadd contract float %merged.select515, %merged.select516
  %merged.select517 = select i1 %198, float %954, float %75
  %merged.select518 = select i1 %198, float %985, float %181
  %986 = fmul contract float %merged.select517, %merged.select518
  %987 = select i1 %196, float %986, float undef
  %988 = select i1 %198, float %987, float undef
  %989 = fadd contract float %164, %986
  %990 = select i1 %198, float undef, float %989
  %991 = select i1 %198, i1 %196, i1 true
  br i1 %991, label %merged.bb505, label %merged.bb506

merged.bb504:                                     ; preds = %merged.bb505, %merged.bb508
  %992 = phi float [ %1016, %merged.bb508 ], [ undef, %merged.bb505 ]
  %993 = select i1 %196, float %773, float %992
  %994 = fadd contract float %107, %993
  %995 = select i1 %196, float %954, float %929
  %996 = fmul contract float %995, %994
  %997 = select i1 %196, float %996, float %926
  %998 = select i1 %196, float %952, float %996
  %999 = fadd contract float %997, %998
  br label %merged.bb486

merged.bb505:                                     ; preds = %merged.bb503, %merged.bb506
  %1000 = phi float [ %1014, %merged.bb506 ], [ undef, %merged.bb503 ]
  %1001 = select i1 %196, float %988, float %105
  %1002 = select i1 %196, float %926, float %1000
  %1003 = fadd contract float %1001, %1002
  %1004 = select i1 %196, float %954, float %929
  %1005 = select i1 %196, float %907, float %1003
  %1006 = fmul contract float %1004, %1005
  %1007 = select i1 %196, float %1006, float %941
  %1008 = select i1 %196, float %931, float %1006
  %1009 = fadd contract float %1007, %1008
  %1010 = fmul contract float %954, %947
  %1011 = fadd contract float %1010, %753
  %1012 = select i1 %196, float %1011, float undef
  %1013 = select i1 %198, i1 %196, i1 true
  br i1 %1013, label %merged.bb504, label %merged.bb508

merged.bb506:                                     ; preds = %merged.bb503
  %1014 = load float, float addrspace(1)* %125, align 4, !tbaa !13
  br label %merged.bb505

merged.bb507:                                     ; preds = %merged.bb499
  %1015 = load float, float addrspace(1)* %124, align 4, !tbaa !13
  br label %merged.bb503

merged.bb508:                                     ; preds = %merged.bb505
  %1016 = load float, float addrspace(1)* %126, align 4, !tbaa !13
  br label %merged.bb504

merged.branch.split510:                           ; preds = %merged.bb486
  br label %merged.bb283

merged.bb541:                                     ; preds = %merged.bb742, %merged.branch.split766
  %1017 = phi float [ undef, %merged.branch.split766 ], [ %1150, %merged.bb742 ]
  %1018 = phi float [ undef, %merged.branch.split766 ], [ %1149, %merged.bb742 ]
  %1019 = phi float [ undef, %merged.branch.split766 ], [ %1148, %merged.bb742 ]
  %1020 = phi float [ undef, %merged.branch.split766 ], [ %1147, %merged.bb742 ]
  %1021 = phi float [ undef, %merged.branch.split766 ], [ %1146, %merged.bb742 ]
  %1022 = phi float [ %206, %merged.branch.split766 ], [ %1145, %merged.bb742 ]
  %1023 = phi float [ %1153, %merged.branch.split766 ], [ %1144, %merged.bb742 ]
  %1024 = phi float [ %1152, %merged.branch.split766 ], [ %1143, %merged.bb742 ]
  %1025 = phi float [ %1151, %merged.branch.split766 ], [ %1142, %merged.bb742 ]
  %1026 = phi float [ %202, %merged.branch.split766 ], [ %1141, %merged.bb742 ]
  br i1 %238, label %NewDefault6, label %merged.branch.split610

merged.branch.split610:                           ; preds = %merged.bb541
  br label %NewDefault6

merged.bb738:                                     ; preds = %merged.bb760
  %1027 = load float, float addrspace(1)* %121, align 4, !tbaa !13
  br label %merged.bb744

merged.bb739:                                     ; preds = %merged.bb743, %merged.bb763
  %1028 = phi float [ %1377, %merged.bb763 ], [ undef, %merged.bb743 ]
  %1029 = select i1 %238, float %1174, float %105
  %1030 = select i1 %238, float %1186, float %1028
  %1031 = fadd contract float %1029, %1030
  %1032 = select i1 %238, float %1203, float %1189
  %1033 = select i1 %238, float %1239, float %1031
  %1034 = fmul contract float %1032, %1033
  %1035 = select i1 %238, float %1034, float %1373
  %1036 = select i1 %238, float %1191, float %1034
  %1037 = fadd contract float %1035, %1036
  %1038 = fmul contract float %1203, %1196
  %1039 = fadd contract float %1038, %1226
  %1040 = select i1 %238, float %1039, float undef
  %1041 = select i1 %240, i1 %238, i1 true
  br i1 %1041, label %merged.bb751, label %merged.bb746

merged.bb740:                                     ; preds = %merged.bb748, %merged.bb762
  %1042 = phi i1 [ %1207, %merged.bb748 ], [ undef, %merged.bb762 ]
  %1043 = phi float [ %1208, %merged.bb748 ], [ undef, %merged.bb762 ]
  %1044 = phi float [ %1216, %merged.bb748 ], [ undef, %merged.bb762 ]
  %1045 = select i1 %238, float %1043, float %213
  %1046 = select i1 %238, float %1044, float 5.000000e-01
  %1047 = fmul float %1045, %1046
  %1048 = select i1 %1042, float %231, float %1047
  %1049 = zext i32 %211 to i64
  %1050 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1049
  %1051 = select i1 %238, float %1048, float undef
  %1052 = select i1 %238, float addrspace(1)* %1050, float addrspace(1)* undef
  %1053 = select i1 %238, float addrspace(1)* %1052, float addrspace(1)* %112
  %1054 = load float, float addrspace(1)* %1053, align 4, !tbaa !7
  %1055 = add nsw i32 %211, %0
  %1056 = select i1 %238, i32 %1055, i32 undef
  %1057 = fadd contract float %27, %1054
  %1058 = select i1 %238, float undef, float %1057
  %1059 = sext i32 %1056 to i64
  %1060 = select i1 %238, i64 %1059, i64 undef
  %1061 = fmul contract float %1047, %1058
  %1062 = select i1 %238, float undef, float %1061
  %1063 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1060
  %1064 = select i1 %238, float addrspace(1)* %1063, float addrspace(1)* undef
  %1065 = fadd contract float %202, %1062
  %1066 = select i1 %238, float undef, float %1065
  %1067 = select i1 %238, float addrspace(1)* %1064, float addrspace(1)* %113
  %1068 = load float, float addrspace(1)* %1067, align 4, !tbaa !7
  %1069 = add nsw i32 %211, %28
  %1070 = select i1 %238, i32 %1069, i32 undef
  %1071 = fadd contract float %109, %1068
  %1072 = select i1 %238, float undef, float %1071
  %1073 = sext i32 %1070 to i64
  %1074 = select i1 %238, i64 %1073, i64 undef
  %1075 = fmul contract float %1047, %1072
  %1076 = select i1 %238, float undef, float %1075
  %1077 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1074
  %1078 = select i1 %238, float addrspace(1)* %1077, float addrspace(1)* undef
  %1079 = fadd contract float %206, %1076
  %1080 = select i1 %238, float undef, float %1079
  %1081 = select i1 %238, float addrspace(1)* %1078, float addrspace(1)* %114
  %1082 = load float, float addrspace(1)* %1081, align 4, !tbaa !7
  %1083 = add nsw i32 %211, %33
  %1084 = select i1 %238, i32 %1083, i32 undef
  %1085 = fadd contract float %100, %1082
  %1086 = select i1 %238, float undef, float %1085
  %1087 = sext i32 %1084 to i64
  %1088 = select i1 %238, i64 %1087, i64 undef
  %1089 = fmul contract float %1047, %1086
  %1090 = select i1 %238, float undef, float %1089
  %1091 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1088
  %1092 = select i1 %238, float addrspace(1)* %1091, float addrspace(1)* undef
  %1093 = fadd contract float %205, %1090
  %1094 = select i1 %238, float undef, float %1093
  %1095 = select i1 %238, float addrspace(1)* %1092, float addrspace(1)* %115
  %1096 = load float, float addrspace(1)* %1095, align 4, !tbaa !7
  %1097 = add nsw i32 %211, %38
  %1098 = select i1 %238, i32 %1097, i32 undef
  %1099 = fadd contract float %101, %1096
  %1100 = select i1 %238, float undef, float %1099
  %1101 = sext i32 %1098 to i64
  %1102 = select i1 %238, i64 %1101, i64 undef
  %1103 = fmul contract float %1047, %1100
  %1104 = select i1 %238, float undef, float %1103
  %1105 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1102
  %1106 = select i1 %238, float addrspace(1)* %1105, float addrspace(1)* undef
  %1107 = fadd contract float %204, %1104
  %1108 = select i1 %238, float undef, float %1107
  %1109 = select i1 %238, float addrspace(1)* %1106, float addrspace(1)* %116
  %1110 = load float, float addrspace(1)* %1109, align 4, !tbaa !7
  %1111 = select i1 %240, i1 %238, i1 true
  br i1 %1111, label %merged.bb758, label %merged.bb741

merged.bb741:                                     ; preds = %merged.bb740, %merged.bb758
  %1112 = phi float [ %1311, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1113 = phi float [ %1312, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1114 = phi float [ %1313, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1115 = phi float [ %1315, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1116 = phi float [ %1316, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1117 = phi float [ %1318, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1118 = phi float [ %1320, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1119 = phi float [ %1321, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1120 = phi float [ %1322, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1121 = phi float [ %1352, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1122 = phi float [ %1355, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1123 = phi float [ %1358, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1124 = phi float [ %1361, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1125 = phi float [ %1363, %merged.bb758 ], [ undef, %merged.bb740 ]
  %1126 = select i1 %238, float %203, float %102
  %1127 = select i1 %238, float %1125, float %1110
  %1128 = fadd contract float %1126, %1127
  %1129 = select i1 %238, float %213, float %1047
  %1130 = select i1 %238, float 5.000000e-01, float %1128
  %1131 = fmul contract float %1129, %1130
  %1132 = select i1 %238, float %27, float %203
  %1133 = select i1 %238, float %1068, float %1131
  %1134 = fadd contract float %1132, %1133
  %1135 = select i1 %238, float %1131, float %218
  %1136 = select i1 %238, float %1134, float 5.000000e-01
  %1137 = fmul contract float %1135, %1136
  %1138 = fadd contract float %1137, %1121
  %1139 = select i1 %238, float %1138, float undef
  %1140 = select i1 %240, i1 %238, i1 false
  br i1 %1140, label %merged.bb753, label %merged.bb749

merged.bb742:                                     ; preds = %merged.bb751, %NewDefault1
  %1141 = phi float [ %1226, %merged.bb751 ], [ %202, %NewDefault1 ]
  %1142 = phi float [ %1235, %merged.bb751 ], [ %203, %NewDefault1 ]
  %1143 = phi float [ %1037, %merged.bb751 ], [ %204, %NewDefault1 ]
  %1144 = phi float [ %1171, %merged.bb751 ], [ %205, %NewDefault1 ]
  %1145 = phi float [ %1201, %merged.bb751 ], [ %206, %NewDefault1 ]
  %1146 = phi float [ %1166, %merged.bb751 ], [ undef, %NewDefault1 ]
  %1147 = phi float [ %1031, %merged.bb751 ], [ undef, %NewDefault1 ]
  %1148 = phi float [ %1037, %merged.bb751 ], [ undef, %NewDefault1 ]
  %1149 = phi float [ %1040, %merged.bb751 ], [ undef, %NewDefault1 ]
  %1150 = phi float [ %1235, %merged.bb751 ], [ undef, %NewDefault1 ]
  %1151 = phi float [ undef, %NewDefault1 ], [ %1176, %merged.bb751 ]
  %1152 = phi float [ undef, %NewDefault1 ], [ %1171, %merged.bb751 ]
  %1153 = phi float [ undef, %NewDefault1 ], [ %1162, %merged.bb751 ]
  br i1 %240, label %merged.bb541, label %merged.branch.split766

merged.bb743:                                     ; preds = %merged.bb745, %merged.bb764
  %1154 = phi float [ %1378, %merged.bb764 ], [ undef, %merged.bb745 ]
  %1155 = select i1 %238, float %37, float %102
  %1156 = select i1 %238, float %1096, float %1154
  %1157 = fadd contract float %1155, %1156
  %1158 = select i1 %238, float %1203, float %1189
  %1159 = select i1 %240, float %1157, float undef
  %1160 = select i1 %240, float %1158, float undef
  %merged.select767 = select i1 %240, float %1160, float %75
  %merged.select768 = select i1 %240, float %1159, float %213
  %1161 = fmul contract float %merged.select767, %merged.select768
  %merged.select769 = select i1 %240, float %1161, float %205
  %merged.select770 = select i1 %240, float %1373, float %1161
  %1162 = fadd contract float %merged.select769, %merged.select770
  %1163 = select i1 %238, float %1162, float undef
  %1164 = select i1 %238, float %111, float %1244
  %1165 = select i1 %238, float %1120, float %1161
  %1166 = select i1 %240, float %1163, float undef
  %1167 = select i1 %240, float %1164, float undef
  %1168 = select i1 %240, float %1165, float undef
  %1169 = fmul contract float %75, %218
  %1170 = select i1 %240, float undef, float %1169
  %merged.select771 = select i1 %240, float %1167, float %204
  %merged.select772 = select i1 %240, float %1168, float %1170
  %1171 = fadd contract float %merged.select771, %merged.select772
  %merged.select773 = select i1 %240, float %1203, float %75
  %merged.select774 = select i1 %240, float %1171, float %223
  %1172 = fmul contract float %merged.select773, %merged.select774
  %1173 = select i1 %238, float %1172, float undef
  %1174 = select i1 %240, float %1173, float undef
  %1175 = fadd contract float %203, %1172
  %1176 = select i1 %240, float undef, float %1175
  %1177 = select i1 %240, i1 %238, i1 true
  br i1 %1177, label %merged.bb739, label %merged.bb763

merged.bb744:                                     ; preds = %merged.bb738, %merged.bb760
  %1178 = phi float [ %1027, %merged.bb738 ], [ undef, %merged.bb760 ]
  %1179 = select i1 %238, float %110, float %105
  %1180 = select i1 %238, float %1119, float %1178
  %1181 = fadd contract float %1179, %1180
  %1182 = select i1 %238, float %1246, float %1137
  %1183 = fmul contract float %1182, %1181
  %1184 = select i1 %238, float %1183, float %1134
  %1185 = select i1 %238, float %1256, float %1183
  %1186 = fadd contract float %1184, %1185
  %1187 = select i1 %238, float %1246, float %223
  %1188 = select i1 %238, float %1270, float 5.000000e-01
  %1189 = fmul contract float %1187, %1188
  %1190 = fadd contract float %1189, %1267
  %1191 = select i1 %238, float %1190, float undef
  %1192 = select i1 %240, i1 %238, i1 false
  br i1 %1192, label %merged.bb750, label %merged.bb755

merged.bb745:                                     ; preds = %merged.bb750, %merged.bb761
  %1193 = phi float [ %1375, %merged.bb761 ], [ undef, %merged.bb750 ]
  %1194 = select i1 %238, float %105, float %111
  %1195 = select i1 %238, float %1116, float %1193
  %1196 = fadd contract float %1194, %1195
  %1197 = select i1 %238, float %1246, float %1189
  %1198 = fmul contract float %1197, %1196
  %1199 = select i1 %238, float %1198, float %1270
  %1200 = select i1 %238, float %1244, float %1198
  %1201 = fadd contract float %1199, %1200
  %1202 = fmul contract float %223, 5.000000e-01
  %1203 = select i1 %238, float %1202, float undef
  %1204 = select i1 %240, i1 %238, i1 false
  br i1 %1204, label %merged.bb743, label %merged.bb764

merged.bb746:                                     ; preds = %merged.bb739
  %1205 = load float, float addrspace(1)* %126, align 4, !tbaa !13
  br label %merged.bb751

merged.bb747:                                     ; preds = %merged.bb757
  %1206 = load float, float addrspace(1)* %119, align 4, !tbaa !13
  br label %merged.bb752

merged.bb748:                                     ; preds = %merged.bb762
  %1207 = tail call i1 @llvm.amdgcn.class.f32(float %231, i32 608) #3
  %1208 = select i1 %229, float 0x3EF0000000000000, float 1.000000e+00
  %1209 = fneg float %237
  %1210 = tail call float @llvm.fma.f32(float %1209, float %232, float %231) #3
  %1211 = fcmp ogt float %1210, 0.000000e+00
  %1212 = fneg float %235
  %1213 = tail call float @llvm.fma.f32(float %1212, float %232, float %231) #3
  %1214 = fcmp ole float %1213, 0.000000e+00
  %1215 = select i1 %1214, float %235, float %232
  %1216 = select i1 %1211, float %237, float %1215
  br label %merged.bb740

merged.bb749:                                     ; preds = %merged.bb741
  %1217 = load float, float addrspace(1)* %117, align 4, !tbaa !7
  br label %merged.bb753

merged.bb750:                                     ; preds = %merged.bb744, %merged.bb755
  %1218 = phi float [ %1259, %merged.bb755 ], [ undef, %merged.bb744 ]
  %1219 = select i1 %238, float %104, float %37
  %1220 = select i1 %238, float %1115, float %1218
  %1221 = fadd contract float %1219, %1220
  %1222 = select i1 %238, float %1246, float %1189
  %1223 = fmul contract float %1222, %1221
  %1224 = select i1 %238, float %1223, float %1256
  %1225 = select i1 %238, float %1273, float %1223
  %1226 = fadd contract float %1224, %1225
  %1227 = select i1 %240, i1 %238, i1 false
  br i1 %1227, label %merged.bb745, label %merged.bb761

merged.bb751:                                     ; preds = %merged.bb739, %merged.bb746
  %1228 = phi float [ %1205, %merged.bb746 ], [ undef, %merged.bb739 ]
  %1229 = select i1 %238, float %1117, float %1228
  %1230 = fadd contract float %107, %1229
  %1231 = select i1 %238, float %1203, float %1189
  %1232 = fmul contract float %1231, %1230
  %1233 = select i1 %238, float %1232, float %1186
  %1234 = select i1 %238, float %1201, float %1232
  %1235 = fadd contract float %1233, %1234
  br label %merged.bb742

merged.bb752:                                     ; preds = %merged.bb747, %merged.bb757
  %1236 = phi float [ %1206, %merged.bb747 ], [ undef, %merged.bb757 ]
  %1237 = select i1 %238, float %102, float %101
  %1238 = select i1 %238, float %1114, float %1236
  %1239 = fadd contract float %1237, %1238
  %1240 = select i1 %238, float %1131, float %1137
  %1241 = fmul contract float %1240, %1239
  %1242 = select i1 %238, float %1241, float %1094
  %1243 = select i1 %238, float %1128, float %1241
  %1244 = fadd contract float %1242, %1243
  %1245 = fmul contract float %218, 5.000000e-01
  %1246 = select i1 %238, float %1245, float undef
  %1247 = select i1 %240, i1 %238, i1 false
  br i1 %1247, label %merged.bb760, label %merged.bb759

merged.bb753:                                     ; preds = %merged.bb741, %merged.bb749
  %1248 = phi float [ %1217, %merged.bb749 ], [ undef, %merged.bb741 ]
  %1249 = select i1 %238, float %109, float %32
  %1250 = select i1 %238, float %1118, float %1248
  %1251 = fadd contract float %1249, %1250
  %1252 = select i1 %238, float %1131, float %1137
  %1253 = fmul contract float %1252, %1251
  %1254 = select i1 %238, float %1253, float %1066
  %1255 = select i1 %238, float %1122, float %1253
  %1256 = fadd contract float %1254, %1255
  %1257 = select i1 %240, i1 %238, i1 false
  br i1 %1257, label %merged.bb757, label %merged.bb754

merged.bb754:                                     ; preds = %merged.bb753
  %1258 = load float, float addrspace(1)* %118, align 4, !tbaa !13
  br label %merged.bb757

merged.bb755:                                     ; preds = %merged.bb744
  %1259 = load float, float addrspace(1)* %122, align 4, !tbaa !7
  br label %merged.bb750

merged.bb757:                                     ; preds = %merged.bb753, %merged.bb754
  %1260 = phi float [ %1258, %merged.bb754 ], [ undef, %merged.bb753 ]
  %1261 = select i1 %238, float %100, float %110
  %1262 = select i1 %238, float %1112, float %1260
  %1263 = fadd contract float %1261, %1262
  %1264 = select i1 %238, float %1131, float %1137
  %1265 = fmul contract float %1264, %1263
  %1266 = fadd contract float %1265, %1123
  %1267 = select i1 %238, float %1266, float undef
  %1268 = select i1 %238, float %101, float %1080
  %1269 = select i1 %238, float %1113, float %1265
  %1270 = fadd contract float %1268, %1269
  %1271 = fmul contract float %1131, %1270
  %1272 = fadd contract float %1271, %1124
  %1273 = select i1 %238, float %1272, float undef
  %1274 = select i1 %240, i1 %238, i1 false
  br i1 %1274, label %merged.bb752, label %merged.bb747

merged.bb758:                                     ; preds = %merged.bb740
  %1275 = fdiv contract float %1068, %1054
  %1276 = fdiv contract float %1082, %1054
  %1277 = fdiv contract float %1096, %1054
  %1278 = fmul contract float %1275, %1275
  %1279 = fmul contract float %1276, %1276
  %1280 = fadd contract float %1278, %1279
  %1281 = fmul contract float %1277, %1277
  %1282 = fadd contract float %1280, %1281
  %1283 = fmul contract float %1054, 5.000000e-01
  %1284 = fmul contract float %1283, %1282
  %1285 = fsub contract float %1110, %1284
  %1286 = fmul contract float %1285, 0x3FD9999980000000
  %1287 = fmul contract float %1286, 0x3FF6666660000000
  %1288 = fdiv contract float %1287, %1054
  %1289 = fcmp olt float %1288, 0x39F0000000000000
  %1290 = select i1 %1289, float 0x41F0000000000000, float 1.000000e+00
  %1291 = fmul float %1288, %1290
  %1292 = tail call float @llvm.sqrt.f32(float %1291) #3
  %1293 = bitcast float %1292 to i32
  %1294 = add nsw i32 %1293, -1
  %1295 = bitcast i32 %1294 to float
  %1296 = add nsw i32 %1293, 1
  %1297 = bitcast i32 %1296 to float
  %1298 = tail call i1 @llvm.amdgcn.class.f32(float %1291, i32 608) #3
  %1299 = select i1 %1289, float 0x3EF0000000000000, float 1.000000e+00
  %1300 = fneg float %1297
  %1301 = tail call float @llvm.fma.f32(float %1300, float %1292, float %1291) #3
  %1302 = fcmp ogt float %1301, 0.000000e+00
  %1303 = fneg float %1295
  %1304 = tail call float @llvm.fma.f32(float %1303, float %1292, float %1291) #3
  %1305 = fcmp ole float %1304, 0.000000e+00
  %1306 = select i1 %1305, float %1295, float %1292
  %1307 = select i1 %1302, float %1297, float %1306
  %1308 = fmul float %1299, %1307
  %1309 = select i1 %1298, float %1291, float %1308
  %1310 = fmul contract float %1068, %1275
  %1311 = fadd contract float %1310, %1286
  %1312 = fmul contract float %1275, %1082
  %1313 = fmul contract float %1275, %1096
  %1314 = fmul contract float %1082, %1276
  %1315 = fadd contract float %1314, %1286
  %1316 = fmul contract float %1276, %1096
  %1317 = fmul contract float %1096, %1277
  %1318 = fadd contract float %1317, %1286
  %1319 = fadd contract float %1110, %1286
  %1320 = fmul contract float %1275, %1319
  %1321 = fmul contract float %1276, %1319
  %1322 = fmul contract float %1277, %1319
  %1323 = fmul contract float %1051, 0xBFC99999A0000000
  %1324 = fmul contract float %1323, 5.000000e-01
  %1325 = fcmp olt float %1282, 0x39F0000000000000
  %1326 = select i1 %1325, float 0x41F0000000000000, float 1.000000e+00
  %1327 = fmul float %1282, %1326
  %1328 = tail call float @llvm.sqrt.f32(float %1327) #3
  %1329 = bitcast float %1328 to i32
  %1330 = add nsw i32 %1329, -1
  %1331 = bitcast i32 %1330 to float
  %1332 = add nsw i32 %1329, 1
  %1333 = bitcast i32 %1332 to float
  %1334 = tail call i1 @llvm.amdgcn.class.f32(float %1327, i32 608) #3
  %1335 = select i1 %1325, float 0x3EF0000000000000, float 1.000000e+00
  %1336 = fneg float %1333
  %1337 = tail call float @llvm.fma.f32(float %1336, float %1328, float %1327) #3
  %1338 = fcmp ogt float %1337, 0.000000e+00
  %1339 = fneg float %1331
  %1340 = tail call float @llvm.fma.f32(float %1339, float %1328, float %1327) #3
  %1341 = fcmp ole float %1340, 0.000000e+00
  %1342 = select i1 %1341, float %1331, float %1328
  %1343 = select i1 %1338, float %1333, float %1342
  %1344 = fmul float %1335, %1343
  %1345 = select i1 %1334, float %1327, float %1344
  %1346 = fadd contract float %71, %1345
  %1347 = fadd contract float %98, %1346
  %1348 = fadd contract float %1347, %1309
  %1349 = fmul contract float %1324, %1348
  %1350 = fsub contract float %23, %1054
  %1351 = fmul contract float %1350, %1349
  %1352 = fadd contract float %202, %1351
  %1353 = fsub contract float %42, %1110
  %1354 = fmul contract float %1353, %1349
  %1355 = fadd contract float %206, %1354
  %1356 = fsub contract float %27, %1068
  %1357 = fmul contract float %1356, %1349
  %1358 = fadd contract float %205, %1357
  %1359 = fsub contract float %32, %1082
  %1360 = fmul contract float %1359, %1349
  %1361 = fadd contract float %204, %1360
  %1362 = fsub contract float %37, %1096
  %1363 = fmul contract float %1362, %1349
  br label %merged.bb741

merged.bb759:                                     ; preds = %merged.bb752
  %1364 = load float, float addrspace(1)* %120, align 4, !tbaa !13
  br label %merged.bb760

merged.bb760:                                     ; preds = %merged.bb752, %merged.bb759
  %1365 = phi float [ %1364, %merged.bb759 ], [ undef, %merged.bb752 ]
  %1366 = select i1 %238, float %32, float %104
  %1367 = select i1 %238, float %1082, float %1365
  %1368 = fadd contract float %1366, %1367
  %1369 = select i1 %238, float %1246, float %1137
  %1370 = fmul contract float %1369, %1368
  %1371 = select i1 %238, float %1370, float %1108
  %1372 = select i1 %238, float %1139, float %1370
  %1373 = fadd contract float %1371, %1372
  %1374 = select i1 %240, i1 %238, i1 false
  br i1 %1374, label %merged.bb744, label %merged.bb738

merged.bb761:                                     ; preds = %merged.bb750
  %1375 = load float, float addrspace(1)* %123, align 4, !tbaa !13
  br label %merged.bb745

merged.bb762:                                     ; preds = %NewDefault1
  %1376 = select i1 %240, i1 %238, i1 true
  br i1 %1376, label %merged.bb748, label %merged.bb740

merged.bb763:                                     ; preds = %merged.bb743
  %1377 = load float, float addrspace(1)* %125, align 4, !tbaa !13
  br label %merged.bb739

merged.bb764:                                     ; preds = %merged.bb745
  %1378 = load float, float addrspace(1)* %124, align 4, !tbaa !13
  br label %merged.bb743

merged.branch.split766:                           ; preds = %merged.bb742
  br label %merged.bb541

merged.bb:                                        ; preds = %merged.bb1020, %merged.branch.split1030
  %1379 = phi float [ undef, %merged.branch.split1030 ], [ %1737, %merged.bb1020 ]
  %1380 = phi float [ undef, %merged.branch.split1030 ], [ %1736, %merged.bb1020 ]
  %1381 = phi float [ undef, %merged.branch.split1030 ], [ %1735, %merged.bb1020 ]
  %1382 = phi float [ undef, %merged.branch.split1030 ], [ %1734, %merged.bb1020 ]
  %1383 = phi float [ undef, %merged.branch.split1030 ], [ %1733, %merged.bb1020 ]
  %1384 = phi float [ %248, %merged.branch.split1030 ], [ %1732, %merged.bb1020 ]
  %1385 = phi float [ %1740, %merged.branch.split1030 ], [ %1731, %merged.bb1020 ]
  %1386 = phi float [ %1739, %merged.branch.split1030 ], [ %1730, %merged.bb1020 ]
  %1387 = phi float [ %1738, %merged.branch.split1030 ], [ %1729, %merged.bb1020 ]
  %1388 = phi float [ %244, %merged.branch.split1030 ], [ %1728, %merged.bb1020 ]
  br i1 %277, label %NewDefault11, label %merged.branch.split800

merged.branch.split800:                           ; preds = %merged.bb
  br label %NewDefault11

merged.bb994:                                     ; preds = %merged.bb1011
  %1389 = load float, float addrspace(1)* %120, align 4, !tbaa !13
  br label %merged.bb996

merged.bb995:                                     ; preds = %merged.bb1013
  %1390 = load float, float addrspace(1)* %118, align 4, !tbaa !13
  br label %merged.bb997

merged.bb996:                                     ; preds = %merged.bb994, %merged.bb1011
  %1391 = phi float [ %1389, %merged.bb994 ], [ undef, %merged.bb1011 ]
  %1392 = select i1 %277, float %32, float %104
  %1393 = select i1 %277, float %1646, float %1391
  %1394 = fadd contract float %1392, %1393
  %1395 = select i1 %277, float %1604, float %1498
  %1396 = fmul contract float %1395, %1394
  %1397 = select i1 %277, float %1396, float %1672
  %1398 = select i1 %277, float %1500, float %1396
  %1399 = fadd contract float %1397, %1398
  %1400 = select i1 %279, i1 %277, i1 false
  br i1 %1400, label %merged.bb1017, label %merged.bb1014

merged.bb997:                                     ; preds = %merged.bb995, %merged.bb1013
  %1401 = phi float [ %1390, %merged.bb995 ], [ undef, %merged.bb1013 ]
  %1402 = select i1 %277, float %100, float %110
  %1403 = select i1 %277, float %1473, float %1401
  %1404 = fadd contract float %1402, %1403
  %1405 = select i1 %277, float %1492, float %1498
  %1406 = fmul contract float %1405, %1404
  %1407 = fadd contract float %1406, %1484
  %1408 = select i1 %277, float %1407, float undef
  %1409 = select i1 %277, float %101, float %1644
  %1410 = select i1 %277, float %1474, float %1406
  %1411 = fadd contract float %1409, %1410
  %1412 = fmul contract float %1492, %1411
  %1413 = fadd contract float %1412, %1485
  %1414 = select i1 %277, float %1413, float undef
  %1415 = select i1 %279, i1 %277, i1 false
  br i1 %1415, label %merged.bb1011, label %merged.bb1001

merged.bb998:                                     ; preds = %merged.bb1015, %merged.bb1019
  %1416 = phi float [ %1687, %merged.bb1015 ], [ undef, %merged.bb1019 ]
  %1417 = select i1 %277, float %1724, float %105
  %1418 = select i1 %277, float %1697, float %1416
  %1419 = fadd contract float %1417, %1418
  %1420 = select i1 %277, float %1459, float %1700
  %1421 = select i1 %277, float %1597, float %1419
  %1422 = fmul contract float %1420, %1421
  %1423 = select i1 %277, float %1422, float %1399
  %1424 = select i1 %277, float %1702, float %1422
  %1425 = fadd contract float %1423, %1424
  %1426 = fmul contract float %1459, %1452
  %1427 = fadd contract float %1426, %1446
  %1428 = select i1 %277, float %1427, float undef
  %1429 = select i1 %279, i1 %277, i1 true
  br i1 %1429, label %merged.bb999, label %merged.bb1005

merged.bb999:                                     ; preds = %merged.bb998, %merged.bb1005
  %1430 = phi float [ %1472, %merged.bb1005 ], [ undef, %merged.bb998 ]
  %1431 = select i1 %277, float %1478, float %1430
  %1432 = fadd contract float %107, %1431
  %1433 = select i1 %277, float %1459, float %1700
  %1434 = fmul contract float %1433, %1432
  %1435 = select i1 %277, float %1434, float %1697
  %1436 = select i1 %277, float %1457, float %1434
  %1437 = fadd contract float %1435, %1436
  br label %merged.bb1020

merged.bb1000:                                    ; preds = %merged.bb1007, %merged.bb1017
  %1438 = phi float [ %1502, %merged.bb1007 ], [ undef, %merged.bb1017 ]
  %1439 = select i1 %277, float %104, float %37
  %1440 = select i1 %277, float %1476, float %1438
  %1441 = fadd contract float %1439, %1440
  %1442 = select i1 %277, float %1604, float %1700
  %1443 = fmul contract float %1442, %1441
  %1444 = select i1 %277, float %1443, float %1684
  %1445 = select i1 %277, float %1414, float %1443
  %1446 = fadd contract float %1444, %1445
  %1447 = select i1 %279, i1 %277, i1 false
  br i1 %1447, label %merged.bb1002, label %merged.bb1004

merged.bb1001:                                    ; preds = %merged.bb997
  %1448 = load float, float addrspace(1)* %119, align 4, !tbaa !13
  br label %merged.bb1011

merged.bb1002:                                    ; preds = %merged.bb1000, %merged.bb1004
  %1449 = phi float [ %1471, %merged.bb1004 ], [ undef, %merged.bb1000 ]
  %1450 = select i1 %277, float %105, float %111
  %1451 = select i1 %277, float %1477, float %1449
  %1452 = fadd contract float %1450, %1451
  %1453 = select i1 %277, float %1604, float %1700
  %1454 = fmul contract float %1453, %1452
  %1455 = select i1 %277, float %1454, float %1411
  %1456 = select i1 %277, float %1602, float %1454
  %1457 = fadd contract float %1455, %1456
  %1458 = fmul contract float %262, 5.000000e-01
  %1459 = select i1 %277, float %1458, float undef
  %1460 = select i1 %279, i1 %277, i1 false
  br i1 %1460, label %merged.bb1019, label %merged.bb1016

merged.bb1003:                                    ; preds = %merged.bb1009
  %1461 = tail call i1 @llvm.amdgcn.class.f32(float %270, i32 608) #3
  %1462 = select i1 %268, float 0x3EF0000000000000, float 1.000000e+00
  %1463 = fneg float %276
  %1464 = tail call float @llvm.fma.f32(float %1463, float %271, float %270) #3
  %1465 = fcmp ogt float %1464, 0.000000e+00
  %1466 = fneg float %274
  %1467 = tail call float @llvm.fma.f32(float %1466, float %271, float %270) #3
  %1468 = fcmp ole float %1467, 0.000000e+00
  %1469 = select i1 %1468, float %274, float %271
  %1470 = select i1 %1465, float %276, float %1469
  br label %merged.bb1012

merged.bb1004:                                    ; preds = %merged.bb1000
  %1471 = load float, float addrspace(1)* %123, align 4, !tbaa !13
  br label %merged.bb1002

merged.bb1005:                                    ; preds = %merged.bb998
  %1472 = load float, float addrspace(1)* %126, align 4, !tbaa !13
  br label %merged.bb999

merged.bb1006:                                    ; preds = %merged.bb1010, %merged.bb1012
  %1473 = phi float [ %1541, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1474 = phi float [ %1542, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1475 = phi float [ %1543, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1476 = phi float [ %1545, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1477 = phi float [ %1546, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1478 = phi float [ %1548, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1479 = phi float [ %1550, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1480 = phi float [ %1551, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1481 = phi float [ %1552, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1482 = phi float [ %1582, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1483 = phi float [ %1585, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1484 = phi float [ %1588, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1485 = phi float [ %1591, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1486 = phi float [ %1593, %merged.bb1010 ], [ undef, %merged.bb1012 ]
  %1487 = select i1 %277, float %245, float %102
  %1488 = select i1 %277, float %1486, float %1674
  %1489 = fadd contract float %1487, %1488
  %1490 = select i1 %277, float %252, float %1611
  %1491 = select i1 %277, float 5.000000e-01, float %1489
  %1492 = fmul contract float %1490, %1491
  %1493 = select i1 %277, float %27, float %245
  %1494 = select i1 %277, float %1632, float %1492
  %1495 = fadd contract float %1493, %1494
  %1496 = select i1 %277, float %1492, float %257
  %1497 = select i1 %277, float %1495, float 5.000000e-01
  %1498 = fmul contract float %1496, %1497
  %1499 = fadd contract float %1498, %1482
  %1500 = select i1 %277, float %1499, float undef
  %1501 = select i1 %279, i1 %277, i1 false
  br i1 %1501, label %merged.bb1013, label %merged.bb1008

merged.bb1007:                                    ; preds = %merged.bb1017
  %1502 = load float, float addrspace(1)* %122, align 4, !tbaa !7
  br label %merged.bb1000

merged.bb1008:                                    ; preds = %merged.bb1006
  %1503 = load float, float addrspace(1)* %117, align 4, !tbaa !7
  br label %merged.bb1013

merged.bb1009:                                    ; preds = %NewDefault6
  %1504 = select i1 %279, i1 %277, i1 true
  br i1 %1504, label %merged.bb1003, label %merged.bb1012

merged.bb1010:                                    ; preds = %merged.bb1012
  %1505 = fdiv contract float %1632, %1618
  %1506 = fdiv contract float %1646, %1618
  %1507 = fdiv contract float %1660, %1618
  %1508 = fmul contract float %1505, %1505
  %1509 = fmul contract float %1506, %1506
  %1510 = fadd contract float %1508, %1509
  %1511 = fmul contract float %1507, %1507
  %1512 = fadd contract float %1510, %1511
  %1513 = fmul contract float %1618, 5.000000e-01
  %1514 = fmul contract float %1513, %1512
  %1515 = fsub contract float %1674, %1514
  %1516 = fmul contract float %1515, 0x3FD9999980000000
  %1517 = fmul contract float %1516, 0x3FF6666660000000
  %1518 = fdiv contract float %1517, %1618
  %1519 = fcmp olt float %1518, 0x39F0000000000000
  %1520 = select i1 %1519, float 0x41F0000000000000, float 1.000000e+00
  %1521 = fmul float %1518, %1520
  %1522 = tail call float @llvm.sqrt.f32(float %1521) #3
  %1523 = bitcast float %1522 to i32
  %1524 = add nsw i32 %1523, -1
  %1525 = bitcast i32 %1524 to float
  %1526 = add nsw i32 %1523, 1
  %1527 = bitcast i32 %1526 to float
  %1528 = tail call i1 @llvm.amdgcn.class.f32(float %1521, i32 608) #3
  %1529 = select i1 %1519, float 0x3EF0000000000000, float 1.000000e+00
  %1530 = fneg float %1527
  %1531 = tail call float @llvm.fma.f32(float %1530, float %1522, float %1521) #3
  %1532 = fcmp ogt float %1531, 0.000000e+00
  %1533 = fneg float %1525
  %1534 = tail call float @llvm.fma.f32(float %1533, float %1522, float %1521) #3
  %1535 = fcmp ole float %1534, 0.000000e+00
  %1536 = select i1 %1535, float %1525, float %1522
  %1537 = select i1 %1532, float %1527, float %1536
  %1538 = fmul float %1529, %1537
  %1539 = select i1 %1528, float %1521, float %1538
  %1540 = fmul contract float %1632, %1505
  %1541 = fadd contract float %1540, %1516
  %1542 = fmul contract float %1505, %1646
  %1543 = fmul contract float %1505, %1660
  %1544 = fmul contract float %1646, %1506
  %1545 = fadd contract float %1544, %1516
  %1546 = fmul contract float %1506, %1660
  %1547 = fmul contract float %1660, %1507
  %1548 = fadd contract float %1547, %1516
  %1549 = fadd contract float %1674, %1516
  %1550 = fmul contract float %1505, %1549
  %1551 = fmul contract float %1506, %1549
  %1552 = fmul contract float %1507, %1549
  %1553 = fmul contract float %1615, 0xBFC99999A0000000
  %1554 = fmul contract float %1553, 5.000000e-01
  %1555 = fcmp olt float %1512, 0x39F0000000000000
  %1556 = select i1 %1555, float 0x41F0000000000000, float 1.000000e+00
  %1557 = fmul float %1512, %1556
  %1558 = tail call float @llvm.sqrt.f32(float %1557) #3
  %1559 = bitcast float %1558 to i32
  %1560 = add nsw i32 %1559, -1
  %1561 = bitcast i32 %1560 to float
  %1562 = add nsw i32 %1559, 1
  %1563 = bitcast i32 %1562 to float
  %1564 = tail call i1 @llvm.amdgcn.class.f32(float %1557, i32 608) #3
  %1565 = select i1 %1555, float 0x3EF0000000000000, float 1.000000e+00
  %1566 = fneg float %1563
  %1567 = tail call float @llvm.fma.f32(float %1566, float %1558, float %1557) #3
  %1568 = fcmp ogt float %1567, 0.000000e+00
  %1569 = fneg float %1561
  %1570 = tail call float @llvm.fma.f32(float %1569, float %1558, float %1557) #3
  %1571 = fcmp ole float %1570, 0.000000e+00
  %1572 = select i1 %1571, float %1561, float %1558
  %1573 = select i1 %1568, float %1563, float %1572
  %1574 = fmul float %1565, %1573
  %1575 = select i1 %1564, float %1557, float %1574
  %1576 = fadd contract float %71, %1575
  %1577 = fadd contract float %98, %1576
  %1578 = fadd contract float %1577, %1539
  %1579 = fmul contract float %1554, %1578
  %1580 = fsub contract float %23, %1618
  %1581 = fmul contract float %1580, %1579
  %1582 = fadd contract float %244, %1581
  %1583 = fsub contract float %42, %1674
  %1584 = fmul contract float %1583, %1579
  %1585 = fadd contract float %248, %1584
  %1586 = fsub contract float %27, %1632
  %1587 = fmul contract float %1586, %1579
  %1588 = fadd contract float %247, %1587
  %1589 = fsub contract float %32, %1646
  %1590 = fmul contract float %1589, %1579
  %1591 = fadd contract float %246, %1590
  %1592 = fsub contract float %37, %1660
  %1593 = fmul contract float %1592, %1579
  br label %merged.bb1006

merged.bb1011:                                    ; preds = %merged.bb997, %merged.bb1001
  %1594 = phi float [ %1448, %merged.bb1001 ], [ undef, %merged.bb997 ]
  %1595 = select i1 %277, float %102, float %101
  %1596 = select i1 %277, float %1475, float %1594
  %1597 = fadd contract float %1595, %1596
  %1598 = select i1 %277, float %1492, float %1498
  %1599 = fmul contract float %1598, %1597
  %1600 = select i1 %277, float %1599, float %1658
  %1601 = select i1 %277, float %1489, float %1599
  %1602 = fadd contract float %1600, %1601
  %1603 = fmul contract float %257, 5.000000e-01
  %1604 = select i1 %277, float %1603, float undef
  %1605 = select i1 %279, i1 %277, i1 false
  br i1 %1605, label %merged.bb996, label %merged.bb994

merged.bb1012:                                    ; preds = %merged.bb1003, %merged.bb1009
  %1606 = phi i1 [ %1461, %merged.bb1003 ], [ undef, %merged.bb1009 ]
  %1607 = phi float [ %1462, %merged.bb1003 ], [ undef, %merged.bb1009 ]
  %1608 = phi float [ %1470, %merged.bb1003 ], [ undef, %merged.bb1009 ]
  %1609 = select i1 %277, float %1607, float %252
  %1610 = select i1 %277, float %1608, float 5.000000e-01
  %1611 = fmul float %1609, %1610
  %1612 = select i1 %1606, float %270, float %1611
  %1613 = zext i32 %250 to i64
  %1614 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1613
  %1615 = select i1 %277, float %1612, float undef
  %1616 = select i1 %277, float addrspace(1)* %1614, float addrspace(1)* undef
  %1617 = select i1 %277, float addrspace(1)* %1616, float addrspace(1)* %112
  %1618 = load float, float addrspace(1)* %1617, align 4, !tbaa !7
  %1619 = add nsw i32 %250, %0
  %1620 = select i1 %277, i32 %1619, i32 undef
  %1621 = fadd contract float %27, %1618
  %1622 = select i1 %277, float undef, float %1621
  %1623 = sext i32 %1620 to i64
  %1624 = select i1 %277, i64 %1623, i64 undef
  %1625 = fmul contract float %1611, %1622
  %1626 = select i1 %277, float undef, float %1625
  %1627 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1624
  %1628 = select i1 %277, float addrspace(1)* %1627, float addrspace(1)* undef
  %1629 = fadd contract float %244, %1626
  %1630 = select i1 %277, float undef, float %1629
  %1631 = select i1 %277, float addrspace(1)* %1628, float addrspace(1)* %113
  %1632 = load float, float addrspace(1)* %1631, align 4, !tbaa !7
  %1633 = add nsw i32 %250, %28
  %1634 = select i1 %277, i32 %1633, i32 undef
  %1635 = fadd contract float %109, %1632
  %1636 = select i1 %277, float undef, float %1635
  %1637 = sext i32 %1634 to i64
  %1638 = select i1 %277, i64 %1637, i64 undef
  %1639 = fmul contract float %1611, %1636
  %1640 = select i1 %277, float undef, float %1639
  %1641 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1638
  %1642 = select i1 %277, float addrspace(1)* %1641, float addrspace(1)* undef
  %1643 = fadd contract float %248, %1640
  %1644 = select i1 %277, float undef, float %1643
  %1645 = select i1 %277, float addrspace(1)* %1642, float addrspace(1)* %114
  %1646 = load float, float addrspace(1)* %1645, align 4, !tbaa !7
  %1647 = add nsw i32 %250, %33
  %1648 = select i1 %277, i32 %1647, i32 undef
  %1649 = fadd contract float %100, %1646
  %1650 = select i1 %277, float undef, float %1649
  %1651 = sext i32 %1648 to i64
  %1652 = select i1 %277, i64 %1651, i64 undef
  %1653 = fmul contract float %1611, %1650
  %1654 = select i1 %277, float undef, float %1653
  %1655 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1652
  %1656 = select i1 %277, float addrspace(1)* %1655, float addrspace(1)* undef
  %1657 = fadd contract float %247, %1654
  %1658 = select i1 %277, float undef, float %1657
  %1659 = select i1 %277, float addrspace(1)* %1656, float addrspace(1)* %115
  %1660 = load float, float addrspace(1)* %1659, align 4, !tbaa !7
  %1661 = add nsw i32 %250, %38
  %1662 = select i1 %277, i32 %1661, i32 undef
  %1663 = fadd contract float %101, %1660
  %1664 = select i1 %277, float undef, float %1663
  %1665 = sext i32 %1662 to i64
  %1666 = select i1 %277, i64 %1665, i64 undef
  %1667 = fmul contract float %1611, %1664
  %1668 = select i1 %277, float undef, float %1667
  %1669 = getelementptr inbounds float, float addrspace(1)* %3, i64 %1666
  %1670 = select i1 %277, float addrspace(1)* %1669, float addrspace(1)* undef
  %1671 = fadd contract float %246, %1668
  %1672 = select i1 %277, float undef, float %1671
  %1673 = select i1 %277, float addrspace(1)* %1670, float addrspace(1)* %116
  %1674 = load float, float addrspace(1)* %1673, align 4, !tbaa !7
  %1675 = select i1 %279, i1 %277, i1 true
  br i1 %1675, label %merged.bb1010, label %merged.bb1006

merged.bb1013:                                    ; preds = %merged.bb1006, %merged.bb1008
  %1676 = phi float [ %1503, %merged.bb1008 ], [ undef, %merged.bb1006 ]
  %1677 = select i1 %277, float %109, float %32
  %1678 = select i1 %277, float %1479, float %1676
  %1679 = fadd contract float %1677, %1678
  %1680 = select i1 %277, float %1492, float %1498
  %1681 = fmul contract float %1680, %1679
  %1682 = select i1 %277, float %1681, float %1630
  %1683 = select i1 %277, float %1483, float %1681
  %1684 = fadd contract float %1682, %1683
  %1685 = select i1 %279, i1 %277, i1 false
  br i1 %1685, label %merged.bb997, label %merged.bb995

merged.bb1014:                                    ; preds = %merged.bb996
  %1686 = load float, float addrspace(1)* %121, align 4, !tbaa !13
  br label %merged.bb1017

merged.bb1015:                                    ; preds = %merged.bb1019
  %1687 = load float, float addrspace(1)* %125, align 4, !tbaa !13
  br label %merged.bb998

merged.bb1016:                                    ; preds = %merged.bb1002
  %1688 = load float, float addrspace(1)* %124, align 4, !tbaa !13
  br label %merged.bb1019

merged.bb1017:                                    ; preds = %merged.bb996, %merged.bb1014
  %1689 = phi float [ %1686, %merged.bb1014 ], [ undef, %merged.bb996 ]
  %1690 = select i1 %277, float %110, float %105
  %1691 = select i1 %277, float %1480, float %1689
  %1692 = fadd contract float %1690, %1691
  %1693 = select i1 %277, float %1604, float %1498
  %1694 = fmul contract float %1693, %1692
  %1695 = select i1 %277, float %1694, float %1495
  %1696 = select i1 %277, float %1684, float %1694
  %1697 = fadd contract float %1695, %1696
  %1698 = select i1 %277, float %1604, float %262
  %1699 = select i1 %277, float %1411, float 5.000000e-01
  %1700 = fmul contract float %1698, %1699
  %1701 = fadd contract float %1700, %1408
  %1702 = select i1 %277, float %1701, float undef
  %1703 = select i1 %279, i1 %277, i1 false
  br i1 %1703, label %merged.bb1000, label %merged.bb1007

merged.bb1019:                                    ; preds = %merged.bb1002, %merged.bb1016
  %1704 = phi float [ %1688, %merged.bb1016 ], [ undef, %merged.bb1002 ]
  %1705 = select i1 %277, float %37, float %102
  %1706 = select i1 %277, float %1660, float %1704
  %1707 = fadd contract float %1705, %1706
  %1708 = select i1 %277, float %1459, float %1700
  %1709 = select i1 %279, float %1707, float undef
  %1710 = select i1 %279, float %1708, float undef
  %merged.select1021 = select i1 %279, float %1710, float %75
  %merged.select1022 = select i1 %279, float %1709, float %252
  %1711 = fmul contract float %merged.select1021, %merged.select1022
  %merged.select1023 = select i1 %279, float %1711, float %247
  %merged.select1024 = select i1 %279, float %1399, float %1711
  %1712 = fadd contract float %merged.select1023, %merged.select1024
  %1713 = select i1 %277, float %1712, float undef
  %1714 = select i1 %277, float %111, float %1602
  %1715 = select i1 %277, float %1481, float %1711
  %1716 = select i1 %279, float %1713, float undef
  %1717 = select i1 %279, float %1714, float undef
  %1718 = select i1 %279, float %1715, float undef
  %1719 = fmul contract float %75, %257
  %1720 = select i1 %279, float undef, float %1719
  %merged.select1025 = select i1 %279, float %1717, float %246
  %merged.select1026 = select i1 %279, float %1718, float %1720
  %1721 = fadd contract float %merged.select1025, %merged.select1026
  %merged.select1027 = select i1 %279, float %1459, float %75
  %merged.select1028 = select i1 %279, float %1721, float %262
  %1722 = fmul contract float %merged.select1027, %merged.select1028
  %1723 = select i1 %277, float %1722, float undef
  %1724 = select i1 %279, float %1723, float undef
  %1725 = fadd contract float %245, %1722
  %1726 = select i1 %279, float undef, float %1725
  %1727 = select i1 %279, i1 %277, i1 true
  br i1 %1727, label %merged.bb998, label %merged.bb1015

merged.bb1020:                                    ; preds = %merged.bb999, %NewDefault6
  %1728 = phi float [ %1446, %merged.bb999 ], [ %244, %NewDefault6 ]
  %1729 = phi float [ %1437, %merged.bb999 ], [ %245, %NewDefault6 ]
  %1730 = phi float [ %1425, %merged.bb999 ], [ %246, %NewDefault6 ]
  %1731 = phi float [ %1721, %merged.bb999 ], [ %247, %NewDefault6 ]
  %1732 = phi float [ %1457, %merged.bb999 ], [ %248, %NewDefault6 ]
  %1733 = phi float [ %1716, %merged.bb999 ], [ undef, %NewDefault6 ]
  %1734 = phi float [ %1419, %merged.bb999 ], [ undef, %NewDefault6 ]
  %1735 = phi float [ %1425, %merged.bb999 ], [ undef, %NewDefault6 ]
  %1736 = phi float [ %1428, %merged.bb999 ], [ undef, %NewDefault6 ]
  %1737 = phi float [ %1437, %merged.bb999 ], [ undef, %NewDefault6 ]
  %1738 = phi float [ undef, %NewDefault6 ], [ %1726, %merged.bb999 ]
  %1739 = phi float [ undef, %NewDefault6 ], [ %1721, %merged.bb999 ]
  %1740 = phi float [ undef, %NewDefault6 ], [ %1712, %merged.bb999 ]
  br i1 %279, label %merged.bb, label %merged.branch.split1030

merged.branch.split1030:                          ; preds = %merged.bb1020
  br label %merged.bb
}

; Function Attrs: nofree norecurse nounwind
define protected amdgpu_kernel void @_Z14cuda_time_stepiiPfS_S_S_(i32 %0, i32 %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture %3, float addrspace(1)* nocapture readonly %4, float addrspace(1)* nocapture readonly %5) local_unnamed_addr #0 {
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !4, !invariant.load !5
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %12 = zext i16 %10 to i64
  %13 = zext i32 %11 to i64
  %14 = mul nuw nsw i64 %12, %13
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = shl i64 %17, 32
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds float, float addrspace(1)* %4, i64 %20
  %22 = load float, float addrspace(1)* %21, align 4, !tbaa !7
  %23 = sub nsw i32 4, %0
  %24 = sitofp i32 %23 to float
  %25 = fdiv contract float %22, %24
  %26 = getelementptr inbounds float, float addrspace(1)* %2, i64 %20
  %27 = load float, float addrspace(1)* %26, align 4, !tbaa !7
  %28 = getelementptr inbounds float, float addrspace(1)* %5, i64 %20
  %29 = load float, float addrspace(1)* %28, align 4, !tbaa !7
  %30 = fmul contract float %25, %29
  %31 = fadd contract float %27, %30
  %32 = getelementptr inbounds float, float addrspace(1)* %3, i64 %20
  store float %31, float addrspace(1)* %32, align 4, !tbaa !7
  %33 = shl nsw i32 %1, 2
  %34 = add nsw i32 %33, %18
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float addrspace(1)* %2, i64 %35
  %37 = load float, float addrspace(1)* %36, align 4, !tbaa !7
  %38 = getelementptr inbounds float, float addrspace(1)* %5, i64 %35
  %39 = load float, float addrspace(1)* %38, align 4, !tbaa !7
  %40 = fmul contract float %25, %39
  %41 = fadd contract float %37, %40
  %42 = getelementptr inbounds float, float addrspace(1)* %3, i64 %35
  store float %41, float addrspace(1)* %42, align 4, !tbaa !7
  %43 = add nsw i32 %18, %1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float addrspace(1)* %2, i64 %44
  %46 = load float, float addrspace(1)* %45, align 4, !tbaa !7
  %47 = getelementptr inbounds float, float addrspace(1)* %5, i64 %44
  %48 = load float, float addrspace(1)* %47, align 4, !tbaa !7
  %49 = fmul contract float %25, %48
  %50 = fadd contract float %46, %49
  %51 = getelementptr inbounds float, float addrspace(1)* %3, i64 %44
  store float %50, float addrspace(1)* %51, align 4, !tbaa !7
  %52 = shl nsw i32 %1, 1
  %53 = add nsw i32 %52, %18
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float addrspace(1)* %2, i64 %54
  %56 = load float, float addrspace(1)* %55, align 4, !tbaa !7
  %57 = getelementptr inbounds float, float addrspace(1)* %5, i64 %54
  %58 = load float, float addrspace(1)* %57, align 4, !tbaa !7
  %59 = fmul contract float %25, %58
  %60 = fadd contract float %56, %59
  %61 = getelementptr inbounds float, float addrspace(1)* %3, i64 %54
  store float %60, float addrspace(1)* %61, align 4, !tbaa !7
  %62 = mul nsw i32 %1, 3
  %63 = add nsw i32 %62, %18
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float addrspace(1)* %2, i64 %64
  %66 = load float, float addrspace(1)* %65, align 4, !tbaa !7
  %67 = getelementptr inbounds float, float addrspace(1)* %5, i64 %64
  %68 = load float, float addrspace(1)* %67, align 4, !tbaa !7
  %69 = fmul contract float %25, %68
  %70 = fadd contract float %66, %69
  %71 = getelementptr inbounds float, float addrspace(1)* %3, i64 %64
  store float %70, float addrspace(1)* %71, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { nofree norecurse nounwind "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 12.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-4.2.0 21161 b204d7f0cae65b6cd4446eec50fc1fb675d582af)"}
!4 = !{i16 1, i16 1025}
!5 = !{}
!6 = !{i32 0, i32 1024}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!9, !9, i64 0}
