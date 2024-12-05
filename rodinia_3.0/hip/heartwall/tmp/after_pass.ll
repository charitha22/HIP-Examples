; ModuleID = '<stdin>'
source_filename = "main.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.params_common = type { i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, float*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.params_common_change = type { float*, i32 }
%struct.params_unique = type { i32*, i32*, i32*, i32*, float*, i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float* }

@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum = internal unnamed_addr addrspace(3) global [51 x float] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum = internal unnamed_addr addrspace(3) global [51 x float] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum = internal unnamed_addr addrspace(3) global float undef, align 4
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum = internal unnamed_addr addrspace(3) global float undef, align 4
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT = internal unnamed_addr addrspace(3) global float undef, align 4
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val = internal unnamed_addr addrspace(3) global [131 x float] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo = internal unnamed_addr addrspace(3) global [131 x i32] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE13d_in_mod_temp = internal unnamed_addr addrspace(3) global [2601 x float] undef, align 16

; Function Attrs: convergent norecurse nounwind
define protected amdgpu_kernel void @_Z6kernel13params_common20params_common_changeP13params_unique(%struct.params_common addrspace(4)* readonly byref(%struct.params_common) align 8 %0, %struct.params_common_change addrspace(4)* nocapture readonly byref(%struct.params_common_change) align 8 %1, %struct.params_unique addrspace(1)* readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 0
  %5 = load i32, i32 addrspace(4)* %4, align 8
  %6 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 1
  %7 = load i32, i32 addrspace(4)* %6, align 4
  %8 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 3
  %9 = load float, float addrspace(4)* %8, align 4
  %10 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 4
  %11 = load i32, i32 addrspace(4)* %10, align 8
  %12 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 5
  %13 = load i32, i32 addrspace(4)* %12, align 4
  %14 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 32
  %15 = load i32, i32 addrspace(4)* %14, align 4
  %16 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 33
  %17 = load i32, i32 addrspace(4)* %16, align 8
  %18 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 34
  %19 = load i32, i32 addrspace(4)* %18, align 4
  %20 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 36
  %21 = load i32, i32 addrspace(4)* %20, align 4
  %22 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 37
  %23 = load i32, i32 addrspace(4)* %22, align 8
  %24 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 38
  %25 = load i32, i32 addrspace(4)* %24, align 4
  %26 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 40
  %27 = load i32, i32 addrspace(4)* %26, align 4
  %28 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 42
  %29 = load i32, i32 addrspace(4)* %28, align 4
  %30 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 44
  %31 = load i32, i32 addrspace(4)* %30, align 4
  %32 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 45
  %33 = load i32, i32 addrspace(4)* %32, align 8
  %34 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 46
  %35 = load i32, i32 addrspace(4)* %34, align 4
  %36 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 47
  %37 = load i32, i32 addrspace(4)* %36, align 8
  %38 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 48
  %39 = load i32, i32 addrspace(4)* %38, align 4
  %40 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 49
  %41 = load i32, i32 addrspace(4)* %40, align 8
  %42 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 50
  %43 = load i32, i32 addrspace(4)* %42, align 4
  %44 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 52
  %45 = load i32, i32 addrspace(4)* %44, align 4
  %46 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 54
  %47 = load i32, i32 addrspace(4)* %46, align 4
  %48 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 56
  %49 = load i32, i32 addrspace(4)* %48, align 4
  %50 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 58
  %51 = load i32, i32 addrspace(4)* %50, align 4
  %52 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 60
  %53 = load i32, i32 addrspace(4)* %52, align 4
  %54 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 62
  %55 = load i32, i32 addrspace(4)* %54, align 4
  %56 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 64
  %57 = load i32, i32 addrspace(4)* %56, align 4
  %58 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 66
  %59 = load i32, i32 addrspace(4)* %58, align 4
  %60 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 68
  %61 = load i32, i32 addrspace(4)* %60, align 4
  %62 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 70
  %63 = load i32, i32 addrspace(4)* %62, align 4
  %64 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 72
  %65 = load i32, i32 addrspace(4)* %64, align 4
  %66 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 74
  %67 = load i32, i32 addrspace(4)* %66, align 4
  %68 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 76
  %69 = load i32, i32 addrspace(4)* %68, align 4
  %70 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 78
  %71 = load i32, i32 addrspace(4)* %70, align 4
  %72 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 80
  %73 = load i32, i32 addrspace(4)* %72, align 4
  %74 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 82
  %75 = load i32, i32 addrspace(4)* %74, align 4
  %76 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 84
  %77 = load i32, i32 addrspace(4)* %76, align 4
  %78 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 85
  %79 = load i32, i32 addrspace(4)* %78, align 8
  %80 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 86
  %81 = load i32, i32 addrspace(4)* %80, align 4
  %82 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 92
  %83 = load i32, i32 addrspace(4)* %82, align 4
  %84 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 93
  %85 = load i32, i32 addrspace(4)* %84, align 8
  %86 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 94
  %87 = load i32, i32 addrspace(4)* %86, align 4
  %88 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 96
  %89 = load i32, i32 addrspace(4)* %88, align 4
  %90 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 97
  %91 = load i32, i32 addrspace(4)* %90, align 8
  %92 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 98
  %93 = load i32, i32 addrspace(4)* %92, align 4
  %94 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 100
  %95 = load i32, i32 addrspace(4)* %94, align 4
  %96 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 101
  %97 = load i32, i32 addrspace(4)* %96, align 8
  %98 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 104
  %99 = load i32, i32 addrspace(4)* %98, align 4
  %100 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 105
  %101 = load i32, i32 addrspace(4)* %100, align 8
  %102 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 106
  %103 = load i32, i32 addrspace(4)* %102, align 4
  %104 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 108
  %105 = load i32, i32 addrspace(4)* %104, align 4
  %106 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 109
  %107 = load i32, i32 addrspace(4)* %106, align 8
  %108 = getelementptr inbounds %struct.params_common_change, %struct.params_common_change addrspace(4)* %1, i64 0, i32 0
  %109 = load float*, float* addrspace(4)* %108, align 8
  %110 = getelementptr inbounds %struct.params_common_change, %struct.params_common_change addrspace(4)* %1, i64 0, i32 1
  %111 = load i32, i32 addrspace(4)* %110, align 8
  %112 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %113 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %114 = icmp eq i32 %111, 0
  br i1 %114, label %115, label %192

115:                                              ; preds = %3
  %116 = sext i32 %112 to i64
  %117 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116
  %118 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 4
  %119 = load float*, float* addrspace(1)* %118, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 6
  %121 = load i32, i32 addrspace(1)* %120, align 4, !tbaa !11
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %119, i64 %122
  %124 = icmp eq i32 %113, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 5
  %127 = load i32, i32 addrspace(1)* %126, align 8, !tbaa !12
  %128 = mul nsw i32 %127, %11
  %129 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %117, i64 0, i32 0
  %130 = load i32*, i32* addrspace(1)* %129, align 8, !tbaa !13
  %131 = sext i32 %127 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4, !tbaa !14
  %134 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 2
  %135 = load i32*, i32* addrspace(1)* %134, align 8, !tbaa !15
  %136 = sext i32 %128 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32 %133, i32* %137, align 4, !tbaa !14
  %138 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 1
  %139 = load i32*, i32* addrspace(1)* %138, align 8, !tbaa !16
  %140 = load i32, i32 addrspace(1)* %126, align 8, !tbaa !12
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4, !tbaa !14
  %144 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 3
  %145 = load i32*, i32* addrspace(1)* %144, align 8, !tbaa !17
  %146 = getelementptr inbounds i32, i32* %145, i64 %136
  store i32 %143, i32* %146, align 4, !tbaa !14
  br label %147

147:                                              ; preds = %125, %115
  %148 = icmp slt i32 %113, %19
  br i1 %148, label %149, label %192

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %117, i64 0, i32 0
  %151 = load i32*, i32* addrspace(1)* %150, align 8, !tbaa !13
  %152 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 5
  %153 = load i32, i32 addrspace(1)* %152, align 8, !tbaa !12
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4, !tbaa !14
  %157 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 1
  %158 = load i32*, i32* addrspace(1)* %157, align 8, !tbaa !16
  %159 = getelementptr inbounds i32, i32* %158, i64 %154
  %160 = load i32, i32* %159, align 4, !tbaa !14
  br label %161

161:                                              ; preds = %161, %149
  %162 = phi i32 [ %113, %149 ], [ %190, %161 ]
  %163 = add nuw nsw i32 %162, 1
  %164 = freeze i32 %163
  %165 = freeze i32 %15
  %166 = sdiv i32 %164, %165
  %167 = mul i32 %166, %165
  %168 = sub i32 %164, %167
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 %15, i32 %168
  %171 = sext i1 %169 to i32
  %172 = add nsw i32 %166, %171
  %173 = add nsw i32 %170, -1
  %174 = add i32 %172, -26
  %175 = add i32 %174, %160
  %176 = mul nsw i32 %175, %13
  %177 = add i32 %170, -27
  %178 = add i32 %177, %156
  %179 = add i32 %178, %176
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %109, i64 %180
  %182 = bitcast float* %181 to i32*
  %183 = addrspacecast i32* %182 to i32 addrspace(1)*
  %184 = load i32, i32 addrspace(1)* %183, align 4, !tbaa !18
  %185 = mul nsw i32 %172, %15
  %186 = add nsw i32 %185, %173
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %123, i64 %187
  %189 = bitcast float* %188 to i32*
  store i32 %184, i32* %189, align 4, !tbaa !18
  %190 = add nuw nsw i32 %162, 64
  %191 = icmp slt i32 %190, %19
  br i1 %191, label %161, label %192, !llvm.loop !20

192:                                              ; preds = %161, %147, %3
  %193 = phi float* [ undef, %3 ], [ %123, %147 ], [ %123, %161 ]
  br i1 %114, label %1291, label %194

194:                                              ; preds = %192
  %195 = sext i32 %112 to i64
  %196 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 0
  %197 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 5
  %198 = load i32, i32 addrspace(1)* %197, align 8, !tbaa !12
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 1
  %201 = icmp slt i32 %113, %25
  br i1 %201, label %202, label %241

202:                                              ; preds = %194
  %203 = load i32*, i32* addrspace(1)* %200, align 8, !tbaa !16
  %204 = getelementptr inbounds i32, i32* %203, i64 %199
  %205 = load i32, i32* %204, align 4, !tbaa !14
  %206 = load i32*, i32* addrspace(1)* %196, align 8, !tbaa !13
  %207 = getelementptr inbounds i32, i32* %206, i64 %199
  %208 = load i32, i32* %207, align 4, !tbaa !14
  %209 = xor i32 %5, -1
  %210 = add i32 %205, %209
  %211 = sub i32 -2, %5
  %212 = add i32 %211, %208
  %213 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 7
  %214 = load float*, float* addrspace(1)* %213, align 8, !tbaa !22
  br label %215

215:                                              ; preds = %215, %202
  %216 = phi i32 [ %113, %202 ], [ %239, %215 ]
  %217 = add nuw nsw i32 %216, 1
  %218 = freeze i32 %217
  %219 = freeze i32 %21
  %220 = sdiv i32 %218, %219
  %221 = mul i32 %220, %219
  %222 = sub i32 %218, %221
  %223 = icmp eq i32 %222, 0
  %224 = select i1 %223, i32 %21, i32 %222
  %225 = sext i1 %223 to i32
  %226 = add i32 %210, %220
  %227 = add i32 %226, %225
  %228 = mul nsw i32 %227, %13
  %229 = add i32 %212, %224
  %230 = add i32 %229, %228
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %109, i64 %231
  %233 = bitcast float* %232 to i32*
  %234 = addrspacecast i32* %233 to i32 addrspace(1)*
  %235 = load i32, i32 addrspace(1)* %234, align 4, !tbaa !18
  %236 = zext i32 %216 to i64
  %237 = getelementptr inbounds float, float* %214, i64 %236
  %238 = bitcast float* %237 to i32*
  store i32 %235, i32* %238, align 4, !tbaa !18
  %239 = add nuw nsw i32 %216, 64
  %240 = icmp slt i32 %239, %25
  br i1 %240, label %215, label %241, !llvm.loop !23

241:                                              ; preds = %215, %194
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %242 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 4
  %243 = load float*, float* addrspace(1)* %242, align 8, !tbaa !5
  %244 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 6
  %245 = load i32, i32 addrspace(1)* %244, align 4, !tbaa !11
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %243, i64 %246
  %248 = icmp slt i32 %113, %19
  br i1 %248, label %249, label %274

249:                                              ; preds = %249, %241
  %250 = phi i32 [ %272, %249 ], [ %113, %241 ]
  %251 = add nuw nsw i32 %250, 1
  %252 = freeze i32 %251
  %253 = freeze i32 %15
  %254 = sdiv i32 %252, %253
  %255 = mul i32 %254, %253
  %256 = sub i32 %252, %255
  %257 = icmp eq i32 %256, 0
  %258 = zext i1 %257 to i32
  %259 = xor i32 %254, -1
  %260 = add i32 %15, %259
  %261 = add i32 %260, %258
  %262 = mul nsw i32 %261, %15
  %263 = sub i32 %15, %256
  %264 = select i1 %257, i32 0, i32 %263
  %265 = add i32 %264, %262
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %247, i64 %266
  %268 = bitcast float* %267 to i32*
  %269 = load i32, i32* %268, align 4, !tbaa !18
  %270 = getelementptr inbounds [2601 x float], [2601 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE13d_in_mod_temp, i32 0, i32 %250
  %271 = bitcast float addrspace(3)* %270 to i32 addrspace(3)*
  store i32 %269, i32 addrspace(3)* %271, align 4, !tbaa !18
  %272 = add nuw nsw i32 %250, 64
  %273 = icmp slt i32 %272, %19
  br i1 %273, label %249, label %274, !llvm.loop !24

274:                                              ; preds = %249, %241
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %275 = icmp slt i32 %113, %29
  br i1 %275, label %276, label %345

276:                                              ; preds = %274
  %277 = sub i32 1, %23
  %278 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 7
  %279 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 8
  %280 = load float*, float* addrspace(1)* %279, align 8, !tbaa !25
  br label %281

281:                                              ; preds = %339, %276
  %282 = phi i32 [ %113, %276 ], [ %343, %339 ]
  %283 = add nuw nsw i32 %282, 1
  %284 = freeze i32 %283
  %285 = freeze i32 %27
  %286 = sdiv i32 %284, %285
  %287 = mul i32 %286, %285
  %288 = sub i32 %284, %287
  %289 = icmp eq i32 %288, 0
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i32
  %292 = select i1 %289, i32 %27, i32 %288
  %293 = add i32 %286, %33
  %294 = add i32 %293, %291
  %295 = icmp slt i32 %294, %23
  %296 = add i32 %277, %294
  %297 = select i1 %295, i32 1, i32 %296
  %298 = icmp slt i32 %17, %294
  %299 = select i1 %298, i32 %17, i32 %294
  %300 = add nsw i32 %292, %31
  %301 = add nsw i32 %300, 1
  %302 = icmp slt i32 %300, %21
  %303 = sub nsw i32 %301, %21
  %304 = select i1 %302, i32 1, i32 %303
  %305 = icmp slt i32 %15, %300
  %306 = select i1 %305, i32 %15, i32 %300
  %307 = icmp sgt i32 %297, %299
  br i1 %307, label %339, label %308

308:                                              ; preds = %281
  %309 = icmp sgt i32 %304, %306
  br label %310

310:                                              ; preds = %335, %308
  %311 = phi i32 [ %297, %308 ], [ %337, %335 ]
  %312 = phi float [ 0.000000e+00, %308 ], [ %336, %335 ]
  br i1 %309, label %335, label %313

313:                                              ; preds = %310
  %314 = add nsw i32 %311, -1
  %315 = mul nsw i32 %314, %15
  %316 = add i32 %315, -1
  %317 = load float*, float* addrspace(1)* %278, align 8, !tbaa !22
  %318 = sub i32 %294, %311
  %319 = mul nsw i32 %318, %21
  %320 = add i32 %300, %319
  br label %321

321:                                              ; preds = %321, %313
  %322 = phi float [ %312, %313 ], [ %332, %321 ]
  %323 = phi i32 [ %304, %313 ], [ %333, %321 ]
  %324 = add i32 %316, %323
  %325 = getelementptr inbounds [2601 x float], [2601 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE13d_in_mod_temp, i32 0, i32 %324
  %326 = load float, float addrspace(3)* %325, align 4, !tbaa !18
  %327 = sub i32 %320, %323
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %317, i64 %328
  %330 = load float, float* %329, align 4, !tbaa !18
  %331 = fmul contract float %326, %330
  %332 = fadd contract float %322, %331
  %333 = add nsw i32 %323, 1
  %334 = icmp slt i32 %323, %306
  br i1 %334, label %321, label %335, !llvm.loop !26

335:                                              ; preds = %321, %310
  %336 = phi float [ %312, %310 ], [ %332, %321 ]
  %337 = add nsw i32 %311, 1
  %338 = icmp slt i32 %311, %299
  br i1 %338, label %310, label %339, !llvm.loop !27

339:                                              ; preds = %335, %281
  %340 = phi float [ 0.000000e+00, %281 ], [ %336, %335 ]
  %341 = zext i32 %282 to i64
  %342 = getelementptr inbounds float, float* %280, i64 %341
  store float %340, float* %342, align 4, !tbaa !18
  %343 = add nuw nsw i32 %282, 64
  %344 = icmp slt i32 %343, %29
  br i1 %344, label %281, label %345, !llvm.loop !28

345:                                              ; preds = %339, %274
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %346 = icmp slt i32 %113, %43
  br i1 %346, label %347, label %374

347:                                              ; preds = %345
  %348 = add nsw i32 %35, %21
  %349 = add nsw i32 %37, %23
  %350 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %351 = xor i32 %35, -1
  %352 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 7
  br label %unify.bb

unify.bb:                                         ; preds = %merged.branch.split, %347
  %353 = phi i32 [ %113, %347 ], [ %372, %merged.branch.split ]
  %354 = add nuw nsw i32 %353, 1
  %355 = freeze i32 %354
  %356 = freeze i32 %39
  %357 = sdiv i32 %355, %356
  %358 = mul i32 %357, %356
  %359 = sub i32 %355, %358
  %360 = icmp eq i32 %359, 0
  %361 = select i1 %360, i32 %39, i32 %359
  %362 = sext i1 %360 to i32
  %363 = add nsw i32 %357, %362
  %364 = icmp sle i32 %361, %35
  %365 = icmp sgt i32 %361, %348
  %366 = or i1 %364, %365
  %367 = icmp slt i32 %363, %37
  %368 = or i1 %366, %367
  %369 = xor i1 %368, true
  %370 = icmp slt i32 %363, %349
  %371 = and i1 %370, %369
  br i1 %371, label %predication.split, label %predication.tail

merged.branch.split:                              ; preds = %predication.split4, %predication.split2
  %372 = add nuw nsw i32 %353, 64
  %373 = icmp slt i32 %372, %43
  br i1 %373, label %unify.bb, label %374, !llvm.loop !29

374:                                              ; preds = %merged.branch.split, %345
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %375 = icmp slt i32 %113, %41
  br i1 %375, label %376, label %397

376:                                              ; preds = %374
  %377 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %378 = icmp sgt i32 %39, 0
  br label %379

379:                                              ; preds = %394, %376
  %380 = phi i32 [ %113, %376 ], [ %395, %394 ]
  %381 = mul nsw i32 %380, %39
  %382 = add nsw i32 %381, %39
  br i1 %378, label %383, label %394

383:                                              ; preds = %379
  %384 = load float*, float* addrspace(1)* %377, align 8, !tbaa !30
  br label %385

385:                                              ; preds = %385, %383
  %386 = phi float [ 0.000000e+00, %383 ], [ %391, %385 ]
  %387 = phi i32 [ %381, %383 ], [ %392, %385 ]
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds float, float* %384, i64 %388
  %390 = load float, float* %389, align 4, !tbaa !18
  %391 = fadd contract float %386, %390
  store float %391, float* %389, align 4, !tbaa !18
  %392 = add nsw i32 %387, 1
  %393 = icmp slt i32 %392, %382
  br i1 %393, label %385, label %394, !llvm.loop !31

394:                                              ; preds = %385, %379
  %395 = add nuw nsw i32 %380, 64
  %396 = icmp slt i32 %395, %41
  br i1 %396, label %379, label %397, !llvm.loop !32

397:                                              ; preds = %394, %374
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %398 = icmp slt i32 %113, %47
  br i1 %398, label %399, label %431

399:                                              ; preds = %397
  %400 = add i32 %51, -1
  %401 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %402 = load float*, float* addrspace(1)* %401, align 8, !tbaa !30
  %403 = add i32 %49, -2
  %404 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %405 = load float*, float* addrspace(1)* %404, align 8, !tbaa !33
  br label %406

406:                                              ; preds = %406, %399
  %407 = phi i32 [ %113, %399 ], [ %429, %406 ]
  %408 = add nuw nsw i32 %407, 1
  %409 = freeze i32 %408
  %410 = freeze i32 %45
  %411 = sdiv i32 %409, %410
  %412 = mul i32 %411, %410
  %413 = sub i32 %409, %412
  %414 = icmp eq i32 %413, 0
  %415 = select i1 %414, i32 %45, i32 %413
  %416 = sext i1 %414 to i32
  %417 = add i32 %400, %411
  %418 = add i32 %417, %416
  %419 = mul nsw i32 %418, %39
  %420 = add i32 %403, %415
  %421 = add i32 %420, %419
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds float, float* %402, i64 %422
  %424 = bitcast float* %423 to i32*
  %425 = load i32, i32* %424, align 4, !tbaa !18
  %426 = zext i32 %407 to i64
  %427 = getelementptr inbounds float, float* %405, i64 %426
  %428 = bitcast float* %427 to i32*
  store i32 %425, i32* %428, align 4, !tbaa !18
  %429 = add nuw nsw i32 %407, 64
  %430 = icmp slt i32 %429, %47
  br i1 %430, label %406, label %431, !llvm.loop !34

431:                                              ; preds = %406, %397
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %432 = icmp slt i32 %113, %59
  br i1 %432, label %433, label %465

433:                                              ; preds = %431
  %434 = add i32 %55, -1
  %435 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %436 = load float*, float* addrspace(1)* %435, align 8, !tbaa !30
  %437 = add i32 %53, -2
  %438 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %439 = load float*, float* addrspace(1)* %438, align 8, !tbaa !35
  br label %440

440:                                              ; preds = %440, %433
  %441 = phi i32 [ %113, %433 ], [ %463, %440 ]
  %442 = add nuw nsw i32 %441, 1
  %443 = freeze i32 %442
  %444 = freeze i32 %57
  %445 = sdiv i32 %443, %444
  %446 = mul i32 %445, %444
  %447 = sub i32 %443, %446
  %448 = icmp eq i32 %447, 0
  %449 = select i1 %448, i32 %57, i32 %447
  %450 = sext i1 %448 to i32
  %451 = add i32 %434, %445
  %452 = add i32 %451, %450
  %453 = mul nsw i32 %452, %39
  %454 = add i32 %437, %449
  %455 = add i32 %454, %453
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %436, i64 %456
  %458 = bitcast float* %457 to i32*
  %459 = load i32, i32* %458, align 4, !tbaa !18
  %460 = zext i32 %441 to i64
  %461 = getelementptr inbounds float, float* %439, i64 %460
  %462 = bitcast float* %461 to i32*
  store i32 %459, i32* %462, align 4, !tbaa !18
  %463 = add nuw nsw i32 %441, 64
  %464 = icmp slt i32 %463, %59
  br i1 %464, label %440, label %465, !llvm.loop !36

465:                                              ; preds = %440, %431
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %432, label %466, label %481

466:                                              ; preds = %465
  %467 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %468 = load float*, float* addrspace(1)* %467, align 8, !tbaa !33
  %469 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %470 = load float*, float* addrspace(1)* %469, align 8, !tbaa !35
  br label %471

471:                                              ; preds = %471, %466
  %472 = phi i32 [ %113, %466 ], [ %479, %471 ]
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds float, float* %468, i64 %473
  %475 = load float, float* %474, align 4, !tbaa !18
  %476 = getelementptr inbounds float, float* %470, i64 %473
  %477 = load float, float* %476, align 4, !tbaa !18
  %478 = fsub contract float %475, %477
  store float %478, float* %476, align 4, !tbaa !18
  %479 = add nuw nsw i32 %472, 64
  %480 = icmp slt i32 %479, %59
  br i1 %480, label %471, label %481, !llvm.loop !37

481:                                              ; preds = %471, %465
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %482 = icmp slt i32 %113, %57
  br i1 %482, label %483, label %503

483:                                              ; preds = %481
  %484 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %485 = icmp sgt i32 %59, 0
  br label %486

486:                                              ; preds = %500, %483
  %487 = phi i32 [ %113, %483 ], [ %501, %500 ]
  %488 = add nsw i32 %487, %59
  br i1 %485, label %489, label %500

489:                                              ; preds = %486
  %490 = load float*, float* addrspace(1)* %484, align 8, !tbaa !35
  br label %491

491:                                              ; preds = %491, %489
  %492 = phi float [ 0.000000e+00, %489 ], [ %497, %491 ]
  %493 = phi i32 [ %487, %489 ], [ %498, %491 ]
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds float, float* %490, i64 %494
  %496 = load float, float* %495, align 4, !tbaa !18
  %497 = fadd contract float %492, %496
  store float %497, float* %495, align 4, !tbaa !18
  %498 = add nsw i32 %493, %57
  %499 = icmp slt i32 %498, %488
  br i1 %499, label %491, label %500, !llvm.loop !38

500:                                              ; preds = %491, %486
  %501 = add nuw nsw i32 %487, 64
  %502 = icmp slt i32 %501, %57
  br i1 %502, label %486, label %503, !llvm.loop !39

503:                                              ; preds = %500, %481
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %504 = icmp slt i32 %113, %63
  br i1 %504, label %505, label %537

505:                                              ; preds = %503
  %506 = add i32 %67, -1
  %507 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %508 = load float*, float* addrspace(1)* %507, align 8, !tbaa !35
  %509 = add i32 %65, -2
  %510 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %511 = load float*, float* addrspace(1)* %510, align 8, !tbaa !40
  br label %512

512:                                              ; preds = %512, %505
  %513 = phi i32 [ %113, %505 ], [ %535, %512 ]
  %514 = add nuw nsw i32 %513, 1
  %515 = freeze i32 %514
  %516 = freeze i32 %61
  %517 = sdiv i32 %515, %516
  %518 = mul i32 %517, %516
  %519 = sub i32 %515, %518
  %520 = icmp eq i32 %519, 0
  %521 = select i1 %520, i32 %61, i32 %519
  %522 = sext i1 %520 to i32
  %523 = add i32 %506, %517
  %524 = add i32 %523, %522
  %525 = mul nsw i32 %524, %57
  %526 = add i32 %509, %521
  %527 = add i32 %526, %525
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds float, float* %508, i64 %528
  %530 = bitcast float* %529 to i32*
  %531 = load i32, i32* %530, align 4, !tbaa !18
  %532 = zext i32 %513 to i64
  %533 = getelementptr inbounds float, float* %511, i64 %532
  %534 = bitcast float* %533 to i32*
  store i32 %531, i32* %534, align 4, !tbaa !18
  %535 = add nuw nsw i32 %513, 64
  %536 = icmp slt i32 %535, %63
  br i1 %536, label %512, label %537, !llvm.loop !41

537:                                              ; preds = %512, %503
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %538 = icmp slt i32 %113, %75
  br i1 %538, label %539, label %571

539:                                              ; preds = %537
  %540 = add i32 %71, -1
  %541 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %542 = load float*, float* addrspace(1)* %541, align 8, !tbaa !35
  %543 = add i32 %69, -2
  %544 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %545 = load float*, float* addrspace(1)* %544, align 8, !tbaa !42
  br label %546

546:                                              ; preds = %546, %539
  %547 = phi i32 [ %113, %539 ], [ %569, %546 ]
  %548 = add nuw nsw i32 %547, 1
  %549 = freeze i32 %548
  %550 = freeze i32 %73
  %551 = sdiv i32 %549, %550
  %552 = mul i32 %551, %550
  %553 = sub i32 %549, %552
  %554 = icmp eq i32 %553, 0
  %555 = select i1 %554, i32 %73, i32 %553
  %556 = sext i1 %554 to i32
  %557 = add i32 %540, %551
  %558 = add i32 %557, %556
  %559 = mul nsw i32 %558, %57
  %560 = add i32 %543, %555
  %561 = add i32 %560, %559
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds float, float* %542, i64 %562
  %564 = bitcast float* %563 to i32*
  %565 = load i32, i32* %564, align 4, !tbaa !18
  %566 = zext i32 %547 to i64
  %567 = getelementptr inbounds float, float* %545, i64 %566
  %568 = bitcast float* %567 to i32*
  store i32 %565, i32* %568, align 4, !tbaa !18
  %569 = add nuw nsw i32 %547, 64
  %570 = icmp slt i32 %569, %75
  br i1 %570, label %546, label %571, !llvm.loop !43

571:                                              ; preds = %546, %537
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %538, label %572, label %587

572:                                              ; preds = %571
  %573 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %574 = load float*, float* addrspace(1)* %573, align 8, !tbaa !40
  %575 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %576 = load float*, float* addrspace(1)* %575, align 8, !tbaa !42
  br label %577

577:                                              ; preds = %577, %572
  %578 = phi i32 [ %113, %572 ], [ %585, %577 ]
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds float, float* %574, i64 %579
  %581 = load float, float* %580, align 4, !tbaa !18
  %582 = getelementptr inbounds float, float* %576, i64 %579
  %583 = load float, float* %582, align 4, !tbaa !18
  %584 = fsub contract float %581, %583
  store float %584, float* %582, align 4, !tbaa !18
  %585 = add nuw nsw i32 %578, 64
  %586 = icmp slt i32 %585, %75
  br i1 %586, label %577, label %587, !llvm.loop !44

587:                                              ; preds = %577, %571
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %588 = icmp slt i32 %113, %81
  br i1 %588, label %589, label %603

589:                                              ; preds = %587
  %590 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 7
  %591 = load float*, float* addrspace(1)* %590, align 8, !tbaa !22
  %592 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 15
  %593 = load float*, float* addrspace(1)* %592, align 8, !tbaa !45
  br label %594

594:                                              ; preds = %594, %589
  %595 = phi i32 [ %113, %589 ], [ %601, %594 ]
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds float, float* %591, i64 %596
  %598 = load float, float* %597, align 4, !tbaa !18
  %599 = fmul contract float %598, %598
  %600 = getelementptr inbounds float, float* %593, i64 %596
  store float %599, float* %600, align 4, !tbaa !18
  %601 = add nuw nsw i32 %595, 64
  %602 = icmp slt i32 %601, %81
  br i1 %602, label %594, label %603, !llvm.loop !46

603:                                              ; preds = %594, %587
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %346, label %604, label %631

604:                                              ; preds = %603
  %605 = add nsw i32 %77, %35
  %606 = add nsw i32 %79, %37
  %607 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %608 = xor i32 %35, -1
  %609 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 15
  br label %unify.bb6

unify.bb6:                                        ; preds = %merged.branch.split8, %604
  %610 = phi i32 [ %113, %604 ], [ %629, %merged.branch.split8 ]
  %611 = add nuw nsw i32 %610, 1
  %612 = freeze i32 %611
  %613 = freeze i32 %39
  %614 = sdiv i32 %612, %613
  %615 = mul i32 %614, %613
  %616 = sub i32 %612, %615
  %617 = icmp eq i32 %616, 0
  %618 = select i1 %617, i32 %39, i32 %616
  %619 = sext i1 %617 to i32
  %620 = add nsw i32 %614, %619
  %621 = icmp sle i32 %618, %35
  %622 = icmp sgt i32 %618, %605
  %623 = or i1 %621, %622
  %624 = icmp slt i32 %620, %37
  %625 = or i1 %623, %624
  %626 = xor i1 %625, true
  %627 = icmp slt i32 %620, %606
  %628 = and i1 %627, %626
  br i1 %628, label %predication.split10, label %predication.tail11

merged.branch.split8:                             ; preds = %predication.split14, %predication.split12
  %629 = add nuw nsw i32 %610, 64
  %630 = icmp slt i32 %629, %43
  br i1 %630, label %unify.bb6, label %631, !llvm.loop !47

631:                                              ; preds = %merged.branch.split8, %603
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %375, label %632, label %653

632:                                              ; preds = %631
  %633 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %634 = icmp sgt i32 %39, 0
  br label %635

635:                                              ; preds = %650, %632
  %636 = phi i32 [ %113, %632 ], [ %651, %650 ]
  %637 = mul nsw i32 %636, %39
  %638 = add nsw i32 %637, %39
  br i1 %634, label %639, label %650

639:                                              ; preds = %635
  %640 = load float*, float* addrspace(1)* %633, align 8, !tbaa !30
  br label %641

641:                                              ; preds = %641, %639
  %642 = phi float [ 0.000000e+00, %639 ], [ %647, %641 ]
  %643 = phi i32 [ %637, %639 ], [ %648, %641 ]
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float, float* %640, i64 %644
  %646 = load float, float* %645, align 4, !tbaa !18
  %647 = fadd contract float %642, %646
  store float %647, float* %645, align 4, !tbaa !18
  %648 = add nsw i32 %643, 1
  %649 = icmp slt i32 %648, %638
  br i1 %649, label %641, label %650, !llvm.loop !48

650:                                              ; preds = %641, %635
  %651 = add nuw nsw i32 %636, 64
  %652 = icmp slt i32 %651, %41
  br i1 %652, label %635, label %653, !llvm.loop !49

653:                                              ; preds = %650, %631
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %398, label %654, label %686

654:                                              ; preds = %653
  %655 = add i32 %51, -1
  %656 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %657 = load float*, float* addrspace(1)* %656, align 8, !tbaa !30
  %658 = add i32 %49, -2
  %659 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %660 = load float*, float* addrspace(1)* %659, align 8, !tbaa !33
  br label %661

661:                                              ; preds = %661, %654
  %662 = phi i32 [ %113, %654 ], [ %684, %661 ]
  %663 = add nuw nsw i32 %662, 1
  %664 = freeze i32 %663
  %665 = freeze i32 %45
  %666 = sdiv i32 %664, %665
  %667 = mul i32 %666, %665
  %668 = sub i32 %664, %667
  %669 = icmp eq i32 %668, 0
  %670 = select i1 %669, i32 %45, i32 %668
  %671 = sext i1 %669 to i32
  %672 = add i32 %655, %666
  %673 = add i32 %672, %671
  %674 = mul nsw i32 %673, %39
  %675 = add i32 %658, %670
  %676 = add i32 %675, %674
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds float, float* %657, i64 %677
  %679 = bitcast float* %678 to i32*
  %680 = load i32, i32* %679, align 4, !tbaa !18
  %681 = zext i32 %662 to i64
  %682 = getelementptr inbounds float, float* %660, i64 %681
  %683 = bitcast float* %682 to i32*
  store i32 %680, i32* %683, align 4, !tbaa !18
  %684 = add nuw nsw i32 %662, 64
  %685 = icmp slt i32 %684, %47
  br i1 %685, label %661, label %686, !llvm.loop !50

686:                                              ; preds = %661, %653
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %432, label %687, label %719

687:                                              ; preds = %686
  %688 = add i32 %55, -1
  %689 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %690 = load float*, float* addrspace(1)* %689, align 8, !tbaa !30
  %691 = add i32 %53, -2
  %692 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %693 = load float*, float* addrspace(1)* %692, align 8, !tbaa !35
  br label %694

694:                                              ; preds = %694, %687
  %695 = phi i32 [ %113, %687 ], [ %717, %694 ]
  %696 = add nuw nsw i32 %695, 1
  %697 = freeze i32 %696
  %698 = freeze i32 %57
  %699 = sdiv i32 %697, %698
  %700 = mul i32 %699, %698
  %701 = sub i32 %697, %700
  %702 = icmp eq i32 %701, 0
  %703 = select i1 %702, i32 %57, i32 %701
  %704 = sext i1 %702 to i32
  %705 = add i32 %688, %699
  %706 = add i32 %705, %704
  %707 = mul nsw i32 %706, %39
  %708 = add i32 %691, %703
  %709 = add i32 %708, %707
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds float, float* %690, i64 %710
  %712 = bitcast float* %711 to i32*
  %713 = load i32, i32* %712, align 4, !tbaa !18
  %714 = zext i32 %695 to i64
  %715 = getelementptr inbounds float, float* %693, i64 %714
  %716 = bitcast float* %715 to i32*
  store i32 %713, i32* %716, align 4, !tbaa !18
  %717 = add nuw nsw i32 %695, 64
  %718 = icmp slt i32 %717, %59
  br i1 %718, label %694, label %719, !llvm.loop !51

719:                                              ; preds = %694, %686
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %432, label %720, label %725

720:                                              ; preds = %719
  %721 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %722 = load float*, float* addrspace(1)* %721, align 8, !tbaa !33
  %723 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %724 = load float*, float* addrspace(1)* %723, align 8, !tbaa !35
  br label %729

725:                                              ; preds = %729, %719
  br i1 %482, label %726, label %756

726:                                              ; preds = %725
  %727 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %728 = icmp sgt i32 %59, 0
  br label %739

729:                                              ; preds = %729, %720
  %730 = phi i32 [ %113, %720 ], [ %737, %729 ]
  %731 = zext i32 %730 to i64
  %732 = getelementptr inbounds float, float* %722, i64 %731
  %733 = load float, float* %732, align 4, !tbaa !18
  %734 = getelementptr inbounds float, float* %724, i64 %731
  %735 = load float, float* %734, align 4, !tbaa !18
  %736 = fsub contract float %733, %735
  store float %736, float* %734, align 4, !tbaa !18
  %737 = add nuw nsw i32 %730, 64
  %738 = icmp slt i32 %737, %59
  br i1 %738, label %729, label %725, !llvm.loop !52

739:                                              ; preds = %753, %726
  %740 = phi i32 [ %113, %726 ], [ %754, %753 ]
  %741 = add nsw i32 %740, %59
  br i1 %728, label %742, label %753

742:                                              ; preds = %739
  %743 = load float*, float* addrspace(1)* %727, align 8, !tbaa !35
  br label %744

744:                                              ; preds = %744, %742
  %745 = phi float [ 0.000000e+00, %742 ], [ %750, %744 ]
  %746 = phi i32 [ %740, %742 ], [ %751, %744 ]
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds float, float* %743, i64 %747
  %749 = load float, float* %748, align 4, !tbaa !18
  %750 = fadd contract float %745, %749
  store float %750, float* %748, align 4, !tbaa !18
  %751 = add nsw i32 %746, %57
  %752 = icmp slt i32 %751, %741
  br i1 %752, label %744, label %753, !llvm.loop !53

753:                                              ; preds = %744, %739
  %754 = add nuw nsw i32 %740, 64
  %755 = icmp slt i32 %754, %57
  br i1 %755, label %739, label %756, !llvm.loop !54

756:                                              ; preds = %753, %725
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %504, label %757, label %789

757:                                              ; preds = %756
  %758 = add i32 %67, -1
  %759 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %760 = load float*, float* addrspace(1)* %759, align 8, !tbaa !35
  %761 = add i32 %65, -2
  %762 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %763 = load float*, float* addrspace(1)* %762, align 8, !tbaa !40
  br label %764

764:                                              ; preds = %764, %757
  %765 = phi i32 [ %113, %757 ], [ %787, %764 ]
  %766 = add nuw nsw i32 %765, 1
  %767 = freeze i32 %766
  %768 = freeze i32 %61
  %769 = sdiv i32 %767, %768
  %770 = mul i32 %769, %768
  %771 = sub i32 %767, %770
  %772 = icmp eq i32 %771, 0
  %773 = select i1 %772, i32 %61, i32 %771
  %774 = sext i1 %772 to i32
  %775 = add i32 %758, %769
  %776 = add i32 %775, %774
  %777 = mul nsw i32 %776, %57
  %778 = add i32 %761, %773
  %779 = add i32 %778, %777
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds float, float* %760, i64 %780
  %782 = bitcast float* %781 to i32*
  %783 = load i32, i32* %782, align 4, !tbaa !18
  %784 = zext i32 %765 to i64
  %785 = getelementptr inbounds float, float* %763, i64 %784
  %786 = bitcast float* %785 to i32*
  store i32 %783, i32* %786, align 4, !tbaa !18
  %787 = add nuw nsw i32 %765, 64
  %788 = icmp slt i32 %787, %63
  br i1 %788, label %764, label %789, !llvm.loop !55

789:                                              ; preds = %764, %756
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %538, label %790, label %822

790:                                              ; preds = %789
  %791 = add i32 %71, -1
  %792 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %793 = load float*, float* addrspace(1)* %792, align 8, !tbaa !35
  %794 = add i32 %69, -2
  %795 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %796 = load float*, float* addrspace(1)* %795, align 8, !tbaa !56
  br label %797

797:                                              ; preds = %797, %790
  %798 = phi i32 [ %113, %790 ], [ %820, %797 ]
  %799 = add nuw nsw i32 %798, 1
  %800 = freeze i32 %799
  %801 = freeze i32 %73
  %802 = sdiv i32 %800, %801
  %803 = mul i32 %802, %801
  %804 = sub i32 %800, %803
  %805 = icmp eq i32 %804, 0
  %806 = select i1 %805, i32 %73, i32 %804
  %807 = sext i1 %805 to i32
  %808 = add i32 %791, %802
  %809 = add i32 %808, %807
  %810 = mul nsw i32 %809, %57
  %811 = add i32 %794, %806
  %812 = add i32 %811, %810
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds float, float* %793, i64 %813
  %815 = bitcast float* %814 to i32*
  %816 = load i32, i32* %815, align 4, !tbaa !18
  %817 = zext i32 %798 to i64
  %818 = getelementptr inbounds float, float* %796, i64 %817
  %819 = bitcast float* %818 to i32*
  store i32 %816, i32* %819, align 4, !tbaa !18
  %820 = add nuw nsw i32 %798, 64
  %821 = icmp slt i32 %820, %75
  br i1 %821, label %797, label %822, !llvm.loop !57

822:                                              ; preds = %797, %789
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %538, label %823, label %838

823:                                              ; preds = %822
  %824 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %825 = load float*, float* addrspace(1)* %824, align 8, !tbaa !40
  %826 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %827 = load float*, float* addrspace(1)* %826, align 8, !tbaa !56
  br label %828

828:                                              ; preds = %828, %823
  %829 = phi i32 [ %113, %823 ], [ %836, %828 ]
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds float, float* %825, i64 %830
  %832 = load float, float* %831, align 4, !tbaa !18
  %833 = getelementptr inbounds float, float* %827, i64 %830
  %834 = load float, float* %833, align 4, !tbaa !18
  %835 = fsub contract float %832, %834
  store float %835, float* %833, align 4, !tbaa !18
  %836 = add nuw nsw i32 %829, 64
  %837 = icmp slt i32 %836, %75
  br i1 %837, label %828, label %838, !llvm.loop !58

838:                                              ; preds = %828, %822
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %538, label %839, label %880

839:                                              ; preds = %838
  %840 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %841 = load float*, float* addrspace(1)* %840, align 8, !tbaa !42
  %842 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %843 = load float*, float* addrspace(1)* %842, align 8, !tbaa !56
  %844 = sitofp i32 %19 to float
  br label %845

845:                                              ; preds = %845, %839
  %846 = phi i32 [ %113, %839 ], [ %878, %845 ]
  %847 = zext i32 %846 to i64
  %848 = getelementptr inbounds float, float* %841, i64 %847
  %849 = load float, float* %848, align 4, !tbaa !18
  %850 = getelementptr inbounds float, float* %843, i64 %847
  %851 = load float, float* %850, align 4, !tbaa !18
  %852 = fmul contract float %849, %849
  %853 = fdiv contract float %852, %844
  %854 = fsub contract float %851, %853
  %855 = fcmp contract olt float %854, 0.000000e+00
  %856 = select i1 %855, float 0.000000e+00, float %854
  %857 = fcmp olt float %856, 0x39F0000000000000
  %858 = select i1 %857, float 0x41F0000000000000, float 1.000000e+00
  %859 = fmul float %856, %858
  %860 = tail call float @llvm.sqrt.f32(float %859) #4
  %861 = bitcast float %860 to i32
  %862 = add nsw i32 %861, -1
  %863 = bitcast i32 %862 to float
  %864 = add nsw i32 %861, 1
  %865 = bitcast i32 %864 to float
  %866 = tail call i1 @llvm.amdgcn.class.f32(float %859, i32 608) #4
  %867 = select i1 %857, float 0x3EF0000000000000, float 1.000000e+00
  %868 = fneg float %865
  %869 = tail call float @llvm.fma.f32(float %868, float %860, float %859) #4
  %870 = fcmp ogt float %869, 0.000000e+00
  %871 = fneg float %863
  %872 = tail call float @llvm.fma.f32(float %871, float %860, float %859) #4
  %873 = fcmp ole float %872, 0.000000e+00
  %874 = select i1 %873, float %863, float %860
  %875 = select i1 %870, float %865, float %874
  %876 = fmul float %867, %875
  %877 = select i1 %866, float %859, float %876
  store float %877, float* %850, align 4, !tbaa !18
  %878 = add nuw nsw i32 %846, 64
  %879 = icmp slt i32 %878, %75
  br i1 %879, label %845, label %880, !llvm.loop !59

880:                                              ; preds = %845, %838
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %881 = icmp slt i32 %113, %87
  br i1 %881, label %882, label %894

882:                                              ; preds = %880
  %883 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 17
  %884 = load float*, float* addrspace(1)* %883, align 8, !tbaa !60
  br label %885

885:                                              ; preds = %885, %882
  %886 = phi i32 [ %113, %882 ], [ %892, %885 ]
  %887 = zext i32 %886 to i64
  %888 = getelementptr inbounds float, float* %247, i64 %887
  %889 = load float, float* %888, align 4, !tbaa !18
  %890 = fmul contract float %889, %889
  %891 = getelementptr inbounds float, float* %884, i64 %887
  store float %890, float* %891, align 4, !tbaa !18
  %892 = add nuw nsw i32 %886, 64
  %893 = icmp slt i32 %892, %87
  br i1 %893, label %885, label %894, !llvm.loop !61

894:                                              ; preds = %885, %880
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %895 = icmp slt i32 %113, %17
  br i1 %895, label %896, label %920

896:                                              ; preds = %894
  %897 = icmp sgt i32 %15, 0
  br i1 %897, label %898, label %915

898:                                              ; preds = %911, %896
  %899 = phi i32 [ %913, %911 ], [ %113, %896 ]
  %900 = mul nsw i32 %899, %15
  br label %901

901:                                              ; preds = %901, %898
  %902 = phi float [ 0.000000e+00, %898 ], [ %908, %901 ]
  %903 = phi i32 [ 0, %898 ], [ %909, %901 ]
  %904 = add nsw i32 %903, %900
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds float, float* %247, i64 %905
  %907 = load float, float* %906, align 4, !tbaa !18
  %908 = fadd contract float %902, %907
  %909 = add nuw nsw i32 %903, 1
  %910 = icmp eq i32 %909, %15
  br i1 %910, label %911, label %901, !llvm.loop !62

911:                                              ; preds = %901
  %912 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %899
  store float %908, float addrspace(3)* %912, align 4, !tbaa !18
  %913 = add nuw nsw i32 %899, 64
  %914 = icmp slt i32 %913, %17
  br i1 %914, label %898, label %920, !llvm.loop !63

915:                                              ; preds = %915, %896
  %916 = phi i32 [ %918, %915 ], [ %113, %896 ]
  %917 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %916
  store float 0.000000e+00, float addrspace(3)* %917, align 4, !tbaa !18
  %918 = add nuw nsw i32 %916, 64
  %919 = icmp slt i32 %918, %17
  br i1 %919, label %915, label %920, !llvm.loop !63

920:                                              ; preds = %915, %911, %894
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %921 = icmp slt i32 %113, %83
  br i1 %921, label %922, label %unify.bb17

922:                                              ; preds = %920
  %923 = icmp sgt i32 %85, 0
  br i1 %923, label %924, label %944

924:                                              ; preds = %922
  %925 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 17
  %926 = load float*, float* addrspace(1)* %925, align 8, !tbaa !60
  br label %927

927:                                              ; preds = %940, %924
  %928 = phi i32 [ %942, %940 ], [ %113, %924 ]
  br label %929

929:                                              ; preds = %929, %927
  %930 = phi float [ 0.000000e+00, %927 ], [ %937, %929 ]
  %931 = phi i32 [ 0, %927 ], [ %938, %929 ]
  %932 = mul nsw i32 %931, %83
  %933 = add nsw i32 %932, %928
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds float, float* %926, i64 %934
  %936 = load float, float* %935, align 4, !tbaa !18
  %937 = fadd contract float %930, %936
  %938 = add nuw nsw i32 %931, 1
  %939 = icmp eq i32 %938, %85
  br i1 %939, label %940, label %929, !llvm.loop !64

940:                                              ; preds = %929
  %941 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %928
  store float %937, float addrspace(3)* %941, align 4, !tbaa !18
  %942 = add nuw nsw i32 %928, 64
  %943 = icmp slt i32 %942, %83
  br i1 %943, label %927, label %unify.bb17, !llvm.loop !65

944:                                              ; preds = %944, %922
  %945 = phi i32 [ %947, %944 ], [ %113, %922 ]
  %946 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %945
  store float 0.000000e+00, float addrspace(3)* %946, align 4, !tbaa !18
  %947 = add nuw nsw i32 %945, 64
  %948 = icmp slt i32 %947, %83
  br i1 %948, label %944, label %unify.bb17, !llvm.loop !65

unify.bb17:                                       ; preds = %944, %940, %920
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %949 = icmp eq i32 %113, 0
  %950 = icmp eq i32 %113, 1
  %951 = select i1 %949, i1 true, i1 %950
  br i1 %951, label %merged.bb25, label %merged.bb23

952:                                              ; preds = %merged.bb23
  %953 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !18
  %954 = sitofp i32 %19 to float
  %955 = fdiv contract float %953, %954
  %956 = fmul contract float %955, %955
  %957 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum, align 4, !tbaa !18
  %958 = fdiv contract float %957, %954
  %959 = fsub contract float %958, %956
  %960 = fcmp olt float %959, 0x39F0000000000000
  %961 = select i1 %960, float 0x41F0000000000000, float 1.000000e+00
  %962 = fmul float %959, %961
  %963 = tail call float @llvm.sqrt.f32(float %962) #4
  %964 = bitcast float %963 to i32
  %965 = add nsw i32 %964, -1
  %966 = bitcast i32 %965 to float
  %967 = add nsw i32 %964, 1
  %968 = bitcast i32 %967 to float
  %969 = tail call i1 @llvm.amdgcn.class.f32(float %962, i32 608) #4
  %970 = select i1 %960, float 0x3EF0000000000000, float 1.000000e+00
  %971 = fneg float %968
  %972 = tail call float @llvm.fma.f32(float %971, float %963, float %962) #4
  %973 = fcmp ogt float %972, 0.000000e+00
  %974 = fneg float %966
  %975 = tail call float @llvm.fma.f32(float %974, float %963, float %962) #4
  %976 = fcmp ole float %975, 0.000000e+00
  %977 = select i1 %976, float %966, float %963
  %978 = select i1 %973, float %968, float %977
  %979 = fmul float %970, %978
  %980 = select i1 %969, float %962, float %979
  %981 = add nsw i32 %19, -1
  %982 = sitofp i32 %981 to float
  %983 = icmp slt i32 %19, 2
  %984 = select i1 %983, float 0x41F0000000000000, float 1.000000e+00
  %985 = fmul float %984, %982
  %986 = tail call float @llvm.sqrt.f32(float %985) #4
  %987 = bitcast float %986 to i32
  %988 = add nsw i32 %987, -1
  %989 = bitcast i32 %988 to float
  %990 = add nsw i32 %987, 1
  %991 = bitcast i32 %990 to float
  %992 = tail call i1 @llvm.amdgcn.class.f32(float %985, i32 608) #4
  %993 = select i1 %983, float 0x3EF0000000000000, float 1.000000e+00
  %994 = fneg float %991
  %995 = tail call float @llvm.fma.f32(float %994, float %986, float %985) #4
  %996 = fcmp ogt float %995, 0.000000e+00
  %997 = fneg float %989
  %998 = tail call float @llvm.fma.f32(float %997, float %986, float %985) #4
  %999 = fcmp ole float %998, 0.000000e+00
  %1000 = select i1 %999, float %989, float %986
  %1001 = select i1 %996, float %991, float %1000
  %1002 = fmul float %993, %1001
  %1003 = select i1 %992, float %985, float %1002
  %1004 = fmul contract float %1003, %980
  store float %1004, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT, align 4, !tbaa !18
  br label %1005

1005:                                             ; preds = %952, %merged.bb23
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %538, label %1006, label %1018

1006:                                             ; preds = %1005
  %1007 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %1008 = load float*, float* addrspace(1)* %1007, align 8, !tbaa !56
  %1009 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT, align 4, !tbaa !18
  br label %1010

1010:                                             ; preds = %1010, %1006
  %1011 = phi i32 [ %113, %1006 ], [ %1016, %1010 ]
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds float, float* %1008, i64 %1012
  %1014 = load float, float* %1013, align 4, !tbaa !18
  %1015 = fmul contract float %1014, %1009
  store float %1015, float* %1013, align 4, !tbaa !18
  %1016 = add nuw nsw i32 %1011, 64
  %1017 = icmp slt i32 %1016, %75
  br i1 %1017, label %1010, label %1018, !llvm.loop !66

1018:                                             ; preds = %1010, %1005
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %275, label %1019, label %1038

1019:                                             ; preds = %1018
  %1020 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 8
  %1021 = load float*, float* addrspace(1)* %1020, align 8, !tbaa !25
  %1022 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %1023 = load float*, float* addrspace(1)* %1022, align 8, !tbaa !42
  %1024 = sitofp i32 %19 to float
  %1025 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !18
  br label %1026

1026:                                             ; preds = %1026, %1019
  %1027 = phi i32 [ %113, %1019 ], [ %1036, %1026 ]
  %1028 = zext i32 %1027 to i64
  %1029 = getelementptr inbounds float, float* %1021, i64 %1028
  %1030 = load float, float* %1029, align 4, !tbaa !18
  %1031 = getelementptr inbounds float, float* %1023, i64 %1028
  %1032 = load float, float* %1031, align 4, !tbaa !18
  %1033 = fmul contract float %1032, %1025
  %1034 = fdiv contract float %1033, %1024
  %1035 = fsub contract float %1030, %1034
  store float %1035, float* %1029, align 4, !tbaa !18
  %1036 = add nuw nsw i32 %1027, 64
  %1037 = icmp slt i32 %1036, %29
  br i1 %1037, label %1026, label %1038, !llvm.loop !67

1038:                                             ; preds = %1026, %1018
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %538, label %1039, label %1054

1039:                                             ; preds = %1038
  %1040 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 8
  %1041 = load float*, float* addrspace(1)* %1040, align 8, !tbaa !25
  %1042 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %1043 = load float*, float* addrspace(1)* %1042, align 8, !tbaa !56
  br label %1044

1044:                                             ; preds = %1044, %1039
  %1045 = phi i32 [ %113, %1039 ], [ %1052, %1044 ]
  %1046 = zext i32 %1045 to i64
  %1047 = getelementptr inbounds float, float* %1041, i64 %1046
  %1048 = load float, float* %1047, align 4, !tbaa !18
  %1049 = getelementptr inbounds float, float* %1043, i64 %1046
  %1050 = load float, float* %1049, align 4, !tbaa !18
  %1051 = fdiv contract float %1048, %1050
  store float %1051, float* %1049, align 4, !tbaa !18
  %1052 = add nuw nsw i32 %1045, 64
  %1053 = icmp slt i32 %1052, %75
  br i1 %1053, label %1044, label %1054, !llvm.loop !68

1054:                                             ; preds = %1044, %1038
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %1055 = add i32 %5, 1
  %1056 = add i32 %1055, %7
  %1057 = add nsw i32 %111, -1
  %1058 = load i32, i32 addrspace(1)* %197, align 8, !tbaa !12
  %1059 = mul nsw i32 %1058, %11
  %1060 = add nsw i32 %1057, %1059
  %1061 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 2
  %1062 = sext i32 %1060 to i64
  %1063 = sext i32 %1058 to i64
  %1064 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 3
  %1065 = icmp slt i32 %113, %93
  br i1 %1065, label %1066, label %1097

1066:                                             ; preds = %1054
  %1067 = load i32*, i32* addrspace(1)* %1064, align 8, !tbaa !17
  %1068 = getelementptr inbounds i32, i32* %1067, i64 %1062
  %1069 = load i32, i32* %1068, align 4, !tbaa !14
  %1070 = add nsw i32 %1069, %1056
  %1071 = load i32*, i32* addrspace(1)* %200, align 8, !tbaa !16
  %1072 = getelementptr inbounds i32, i32* %1071, i64 %1063
  %1073 = load i32, i32* %1072, align 4, !tbaa !14
  %1074 = xor i32 %1073, -1
  %1075 = add i32 %1070, %1074
  %1076 = load i32*, i32* addrspace(1)* %1061, align 8, !tbaa !15
  %1077 = getelementptr inbounds i32, i32* %1076, i64 %1062
  %1078 = load i32, i32* %1077, align 4, !tbaa !14
  %1079 = add nsw i32 %1078, %1056
  %1080 = load i32*, i32* addrspace(1)* %196, align 8, !tbaa !13
  %1081 = getelementptr inbounds i32, i32* %1080, i64 %1063
  %1082 = load i32, i32* %1081, align 4, !tbaa !14
  %1083 = xor i32 %1082, -1
  %1084 = add i32 %1079, %1083
  %1085 = mul nsw i32 %1075, %89
  %1086 = add nsw i32 %1084, %1085
  %1087 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 18
  %1088 = load float*, float* addrspace(1)* %1087, align 8, !tbaa !69
  br label %1089

1089:                                             ; preds = %1089, %1066
  %1090 = phi i32 [ %113, %1066 ], [ %1095, %1089 ]
  %1091 = icmp eq i32 %1090, %1086
  %1092 = zext i32 %1090 to i64
  %1093 = select i1 %1091, float 1.000000e+00, float 0.000000e+00
  %1094 = getelementptr inbounds float, float* %1088, i64 %1092
  store float %1093, float* %1094, align 4, !tbaa !18
  %1095 = add nuw nsw i32 %1090, 64
  %1096 = icmp slt i32 %1095, %93
  br i1 %1096, label %1089, label %1097, !llvm.loop !70

1097:                                             ; preds = %1089, %1054
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %1098 = icmp slt i32 %113, %103
  br i1 %1098, label %1099, label %1166

1099:                                             ; preds = %1097
  %1100 = sub i32 1, %97
  %1101 = sub i32 1, %95
  %1102 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 18
  %1103 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %1104 = load float*, float* addrspace(1)* %1103, align 8, !tbaa !56
  %1105 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 20
  %1106 = load float*, float* addrspace(1)* %1105, align 8, !tbaa !71
  br label %1107

1107:                                             ; preds = %1157, %1099
  %1108 = phi i32 [ %113, %1099 ], [ %1164, %1157 ]
  %1109 = add nuw nsw i32 %1108, 1
  %1110 = freeze i32 %1109
  %1111 = freeze i32 %99
  %1112 = sdiv i32 %1110, %1111
  %1113 = mul i32 %1112, %1111
  %1114 = sub i32 %1110, %1113
  %1115 = icmp eq i32 %1114, 0
  %1116 = xor i1 %1115, true
  %1117 = zext i1 %1116 to i32
  %1118 = select i1 %1115, i32 %99, i32 %1114
  %1119 = add i32 %1112, %107
  %1120 = add i32 %1119, %1117
  %1121 = icmp slt i32 %1120, %97
  %1122 = add i32 %1100, %1120
  %1123 = select i1 %1121, i32 1, i32 %1122
  %1124 = icmp slt i32 %91, %1120
  %1125 = select i1 %1124, i32 %91, i32 %1120
  %1126 = add nsw i32 %1118, %105
  %1127 = icmp slt i32 %1126, %95
  %1128 = add i32 %1101, %1126
  %1129 = select i1 %1127, i32 1, i32 %1128
  %1130 = icmp slt i32 %89, %1126
  %1131 = select i1 %1130, i32 %89, i32 %1126
  %1132 = icmp sgt i32 %1123, %1125
  br i1 %1132, label %1157, label %1133

1133:                                             ; preds = %1107
  %1134 = icmp sgt i32 %1129, %1131
  br label %1135

1135:                                             ; preds = %1153, %1133
  %1136 = phi i32 [ %1123, %1133 ], [ %1155, %1153 ]
  %1137 = phi float [ 0.000000e+00, %1133 ], [ %1154, %1153 ]
  br i1 %1134, label %1153, label %1138

1138:                                             ; preds = %1135
  %1139 = load float*, float* addrspace(1)* %1102, align 8, !tbaa !69
  %1140 = add nsw i32 %1136, -1
  %1141 = mul nsw i32 %1140, %89
  %1142 = add i32 %1141, -1
  br label %1143

1143:                                             ; preds = %1143, %1138
  %1144 = phi float [ %1137, %1138 ], [ %1150, %1143 ]
  %1145 = phi i32 [ %1129, %1138 ], [ %1151, %1143 ]
  %1146 = add i32 %1142, %1145
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds float, float* %1139, i64 %1147
  %1149 = load float, float* %1148, align 4, !tbaa !18
  %1150 = fadd contract float %1144, %1149
  %1151 = add nsw i32 %1145, 1
  %1152 = icmp slt i32 %1145, %1131
  br i1 %1152, label %1143, label %1153, !llvm.loop !72

1153:                                             ; preds = %1143, %1135
  %1154 = phi float [ %1137, %1135 ], [ %1150, %1143 ]
  %1155 = add nsw i32 %1136, 1
  %1156 = icmp slt i32 %1136, %1125
  br i1 %1156, label %1135, label %1157, !llvm.loop !73

1157:                                             ; preds = %1153, %1107
  %1158 = phi float [ 0.000000e+00, %1107 ], [ %1154, %1153 ]
  %1159 = zext i32 %1108 to i64
  %1160 = getelementptr inbounds float, float* %1104, i64 %1159
  %1161 = load float, float* %1160, align 4, !tbaa !18
  %1162 = fmul contract float %1158, %1161
  %1163 = getelementptr inbounds float, float* %1106, i64 %1159
  store float %1162, float* %1163, align 4, !tbaa !18
  %1164 = add nuw nsw i32 %1108, 64
  %1165 = icmp slt i32 %1164, %103
  br i1 %1165, label %1107, label %1166, !llvm.loop !74

1166:                                             ; preds = %1157, %1097
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %1167 = icmp slt i32 %113, %99
  br i1 %1167, label %1168, label %1203

1168:                                             ; preds = %1166
  %1169 = icmp sgt i32 %101, 0
  br i1 %1169, label %1170, label %1197

1170:                                             ; preds = %1168
  %1171 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 20
  %1172 = load float*, float* addrspace(1)* %1171, align 8, !tbaa !71
  br label %1173

1173:                                             ; preds = %1192, %1170
  %1174 = phi i32 [ %1195, %1192 ], [ %113, %1170 ]
  %1175 = phi i32 [ %1189, %1192 ], [ 0, %1170 ]
  %1176 = phi float [ %1188, %1192 ], [ 0.000000e+00, %1170 ]
  %1177 = mul nsw i32 %1174, %99
  br label %1178

1178:                                             ; preds = %1178, %1173
  %1179 = phi i32 [ %1175, %1173 ], [ %1189, %1178 ]
  %1180 = phi float [ %1176, %1173 ], [ %1188, %1178 ]
  %1181 = phi i32 [ 0, %1173 ], [ %1190, %1178 ]
  %1182 = add nsw i32 %1181, %1177
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds float, float* %1172, i64 %1183
  %1185 = load float, float* %1184, align 4, !tbaa !18
  %1186 = tail call float @llvm.fabs.f32(float %1185) #4
  %1187 = fcmp contract ogt float %1186, %1180
  %1188 = select i1 %1187, float %1186, float %1180
  %1189 = select i1 %1187, i32 %1182, i32 %1179
  %1190 = add nuw nsw i32 %1181, 1
  %1191 = icmp eq i32 %1190, %101
  br i1 %1191, label %1192, label %1178, !llvm.loop !75

1192:                                             ; preds = %1178
  %1193 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1174
  store i32 %1189, i32 addrspace(3)* %1193, align 4, !tbaa !14
  %1194 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1174
  store float %1188, float addrspace(3)* %1194, align 4, !tbaa !18
  %1195 = add nuw nsw i32 %1174, 64
  %1196 = icmp slt i32 %1195, %99
  br i1 %1196, label %1173, label %1203, !llvm.loop !76

1197:                                             ; preds = %1197, %1168
  %1198 = phi i32 [ %1201, %1197 ], [ %113, %1168 ]
  %1199 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1198
  store i32 0, i32 addrspace(3)* %1199, align 4, !tbaa !14
  %1200 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1198
  store float 0.000000e+00, float addrspace(3)* %1200, align 4, !tbaa !18
  %1201 = add nuw nsw i32 %1198, 64
  %1202 = icmp slt i32 %1201, %99
  br i1 %1202, label %1197, label %1203, !llvm.loop !76

1203:                                             ; preds = %1197, %1192, %1166
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %949, label %1204, label %1290

1204:                                             ; preds = %1203
  %1205 = icmp sgt i32 %99, 0
  br i1 %1205, label %1206, label %1253

1206:                                             ; preds = %1204
  %1207 = add i32 %99, -1
  %1208 = and i32 %99, 7
  %1209 = icmp ult i32 %1207, 7
  br i1 %1209, label %1230, label %1210

1210:                                             ; preds = %1206
  %1211 = and i32 %99, -8
  br label %1212

1212:                                             ; preds = %1428, %1210
  %1213 = phi i32 [ 0, %1210 ], [ %1430, %1428 ]
  %1214 = phi float [ 0.000000e+00, %1210 ], [ %1429, %1428 ]
  %1215 = phi i32 [ 0, %1210 ], [ %1431, %1428 ]
  %1216 = phi i32 [ %1211, %1210 ], [ %1432, %1428 ]
  %1217 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1215
  %1218 = load float, float addrspace(3)* %1217, align 16, !tbaa !18
  %1219 = fcmp contract ogt float %1218, %1214
  br i1 %1219, label %1220, label %1223

1220:                                             ; preds = %1212
  %1221 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1215
  %1222 = load i32, i32 addrspace(3)* %1221, align 16, !tbaa !14
  br label %1223

1223:                                             ; preds = %1220, %1212
  %1224 = phi float [ %1218, %1220 ], [ %1214, %1212 ]
  %1225 = phi i32 [ %1222, %1220 ], [ %1213, %1212 ]
  %1226 = or i32 %1215, 1
  %1227 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1226
  %1228 = load float, float addrspace(3)* %1227, align 4, !tbaa !18
  %1229 = fcmp contract ogt float %1228, %1224
  br i1 %1229, label %1365, label %1368

1230:                                             ; preds = %1428, %1206
  %1231 = phi i32 [ undef, %1206 ], [ %1430, %1428 ]
  %1232 = phi i32 [ 0, %1206 ], [ %1430, %1428 ]
  %1233 = phi float [ 0.000000e+00, %1206 ], [ %1429, %1428 ]
  %1234 = phi i32 [ 0, %1206 ], [ %1431, %1428 ]
  %1235 = icmp eq i32 %1208, 0
  br i1 %1235, label %1253, label %1236

1236:                                             ; preds = %1247, %1230
  %1237 = phi i32 [ %1249, %1247 ], [ %1232, %1230 ]
  %1238 = phi float [ %1248, %1247 ], [ %1233, %1230 ]
  %1239 = phi i32 [ %1250, %1247 ], [ %1234, %1230 ]
  %1240 = phi i32 [ %1251, %1247 ], [ %1208, %1230 ]
  %1241 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1239
  %1242 = load float, float addrspace(3)* %1241, align 4, !tbaa !18
  %1243 = fcmp contract ogt float %1242, %1238
  br i1 %1243, label %1244, label %1247

1244:                                             ; preds = %1236
  %1245 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1239
  %1246 = load i32, i32 addrspace(3)* %1245, align 4, !tbaa !14
  br label %1247

1247:                                             ; preds = %1244, %1236
  %1248 = phi float [ %1242, %1244 ], [ %1238, %1236 ]
  %1249 = phi i32 [ %1246, %1244 ], [ %1237, %1236 ]
  %1250 = add nuw nsw i32 %1239, 1
  %1251 = add i32 %1240, -1
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1236, !llvm.loop !77

1253:                                             ; preds = %1247, %1230, %1204
  %1254 = phi i32 [ 0, %1204 ], [ %1231, %1230 ], [ %1249, %1247 ]
  %1255 = add nsw i32 %1254, 1
  %1256 = freeze i32 %1255
  %1257 = freeze i32 %99
  %1258 = sdiv i32 %1256, %1257
  %1259 = mul i32 %1258, %1257
  %1260 = sub i32 %1256, %1259
  %1261 = icmp eq i32 %1260, 0
  %1262 = select i1 %1261, i32 %99, i32 %1260
  %1263 = sext i1 %1261 to i32
  %1264 = sub i32 %7, %5
  %1265 = load i32, i32 addrspace(1)* %197, align 8, !tbaa !12
  %1266 = mul nsw i32 %1265, %11
  %1267 = add nsw i32 %1266, %111
  %1268 = load i32*, i32* addrspace(1)* %196, align 8, !tbaa !13
  %1269 = sext i32 %1265 to i64
  %1270 = getelementptr inbounds i32, i32* %1268, i64 %1269
  %1271 = load i32, i32* %1270, align 4, !tbaa !14
  %1272 = sub i32 %1264, %15
  %1273 = add i32 %1272, %1262
  %1274 = add i32 %1273, %1271
  %1275 = load i32*, i32* addrspace(1)* %1061, align 8, !tbaa !15
  %1276 = sext i32 %1267 to i64
  %1277 = getelementptr inbounds i32, i32* %1275, i64 %1276
  store i32 %1274, i32* %1277, align 4, !tbaa !14
  %1278 = load i32*, i32* addrspace(1)* %200, align 8, !tbaa !16
  %1279 = load i32, i32 addrspace(1)* %197, align 8, !tbaa !12
  %1280 = sext i32 %1279 to i64
  %1281 = getelementptr inbounds i32, i32* %1278, i64 %1280
  %1282 = load i32, i32* %1281, align 4, !tbaa !14
  %1283 = add i32 %1264, 1
  %1284 = sub i32 %1283, %17
  %1285 = add i32 %1284, %1258
  %1286 = add i32 %1285, %1263
  %1287 = add i32 %1286, %1282
  %1288 = load i32*, i32* addrspace(1)* %1064, align 8, !tbaa !17
  %1289 = getelementptr inbounds i32, i32* %1288, i64 %1276
  store i32 %1287, i32* %1289, align 4, !tbaa !14
  br label %1290

1290:                                             ; preds = %1253, %1203
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br label %1291

1291:                                             ; preds = %1290, %192
  %1292 = phi float* [ %247, %1290 ], [ %193, %192 ]
  %1293 = xor i1 %114, true
  %1294 = srem i32 %111, 10
  %1295 = icmp eq i32 %1294, 0
  %1296 = and i1 %1295, %1293
  br i1 %1296, label %1297, label %1364

1297:                                             ; preds = %1291
  %1298 = sext i32 %112 to i64
  %1299 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1298, i32 5
  %1300 = load i32, i32 addrspace(1)* %1299, align 8, !tbaa !12
  %1301 = mul nsw i32 %1300, %11
  %1302 = add nsw i32 %1301, %111
  %1303 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1298, i32 2
  %1304 = load i32*, i32* addrspace(1)* %1303, align 8, !tbaa !15
  %1305 = sext i32 %1302 to i64
  %1306 = getelementptr inbounds i32, i32* %1304, i64 %1305
  %1307 = load i32, i32* %1306, align 4, !tbaa !14
  %1308 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1298, i32 0
  %1309 = load i32*, i32* addrspace(1)* %1308, align 8, !tbaa !13
  %1310 = sext i32 %1300 to i64
  %1311 = getelementptr inbounds i32, i32* %1309, i64 %1310
  store i32 %1307, i32* %1311, align 4, !tbaa !14
  %1312 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1298, i32 3
  %1313 = load i32*, i32* addrspace(1)* %1312, align 8, !tbaa !17
  %1314 = getelementptr inbounds i32, i32* %1313, i64 %1305
  %1315 = load i32, i32* %1314, align 4, !tbaa !14
  %1316 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1298, i32 1
  %1317 = load i32*, i32* addrspace(1)* %1316, align 8, !tbaa !16
  %1318 = load i32, i32 addrspace(1)* %1299, align 8, !tbaa !12
  %1319 = sext i32 %1318 to i64
  %1320 = getelementptr inbounds i32, i32* %1317, i64 %1319
  store i32 %1315, i32* %1320, align 4, !tbaa !14
  %1321 = icmp slt i32 %113, %19
  br i1 %1321, label %1322, label %1364

1322:                                             ; preds = %1297
  %1323 = load i32, i32 addrspace(1)* %1299, align 8, !tbaa !12
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds i32, i32* %1309, i64 %1324
  %1326 = load i32, i32* %1325, align 4, !tbaa !14
  %1327 = getelementptr inbounds i32, i32* %1317, i64 %1324
  %1328 = load i32, i32* %1327, align 4, !tbaa !14
  %1329 = fpext float %9 to double
  %1330 = fsub contract double 1.000000e+00, %1329
  br label %1331

1331:                                             ; preds = %1331, %1322
  %1332 = phi i32 [ %113, %1322 ], [ %1362, %1331 ]
  %1333 = add nuw nsw i32 %1332, 1
  %1334 = freeze i32 %1333
  %1335 = freeze i32 %15
  %1336 = sdiv i32 %1334, %1335
  %1337 = mul i32 %1336, %1335
  %1338 = sub i32 %1334, %1337
  %1339 = icmp eq i32 %1338, 0
  %1340 = select i1 %1339, i32 %15, i32 %1338
  %1341 = sext i1 %1339 to i32
  %1342 = add i32 %1336, -26
  %1343 = add i32 %1342, %1341
  %1344 = add i32 %1343, %1328
  %1345 = mul nsw i32 %1344, %13
  %1346 = add i32 %1340, -27
  %1347 = add i32 %1346, %1326
  %1348 = add i32 %1347, %1345
  %1349 = zext i32 %1332 to i64
  %1350 = getelementptr inbounds float, float* %1292, i64 %1349
  %1351 = load float, float* %1350, align 4, !tbaa !18
  %1352 = fmul contract float %9, %1351
  %1353 = fpext float %1352 to double
  %1354 = sext i32 %1348 to i64
  %1355 = getelementptr inbounds float, float* %109, i64 %1354
  %1356 = addrspacecast float* %1355 to float addrspace(1)*
  %1357 = load float, float addrspace(1)* %1356, align 4, !tbaa !18
  %1358 = fpext float %1357 to double
  %1359 = fmul contract double %1330, %1358
  %1360 = fadd contract double %1359, %1353
  %1361 = fptrunc double %1360 to float
  store float %1361, float* %1350, align 4, !tbaa !18
  %1362 = add nuw nsw i32 %1332, 64
  %1363 = icmp slt i32 %1362, %19
  br i1 %1363, label %1331, label %1364, !llvm.loop !79

1364:                                             ; preds = %1331, %1297, %1291
  ret void

1365:                                             ; preds = %1223
  %1366 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1226
  %1367 = load i32, i32 addrspace(3)* %1366, align 4, !tbaa !14
  br label %1368

1368:                                             ; preds = %1365, %1223
  %1369 = phi float [ %1228, %1365 ], [ %1224, %1223 ]
  %1370 = phi i32 [ %1367, %1365 ], [ %1225, %1223 ]
  %1371 = or i32 %1215, 2
  %1372 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1371
  %1373 = load float, float addrspace(3)* %1372, align 8, !tbaa !18
  %1374 = fcmp contract ogt float %1373, %1369
  br i1 %1374, label %1375, label %1378

1375:                                             ; preds = %1368
  %1376 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1371
  %1377 = load i32, i32 addrspace(3)* %1376, align 8, !tbaa !14
  br label %1378

1378:                                             ; preds = %1375, %1368
  %1379 = phi float [ %1373, %1375 ], [ %1369, %1368 ]
  %1380 = phi i32 [ %1377, %1375 ], [ %1370, %1368 ]
  %1381 = or i32 %1215, 3
  %1382 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1381
  %1383 = load float, float addrspace(3)* %1382, align 4, !tbaa !18
  %1384 = fcmp contract ogt float %1383, %1379
  br i1 %1384, label %1385, label %1388

1385:                                             ; preds = %1378
  %1386 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1381
  %1387 = load i32, i32 addrspace(3)* %1386, align 4, !tbaa !14
  br label %1388

1388:                                             ; preds = %1385, %1378
  %1389 = phi float [ %1383, %1385 ], [ %1379, %1378 ]
  %1390 = phi i32 [ %1387, %1385 ], [ %1380, %1378 ]
  %1391 = or i32 %1215, 4
  %1392 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1391
  %1393 = load float, float addrspace(3)* %1392, align 16, !tbaa !18
  %1394 = fcmp contract ogt float %1393, %1389
  br i1 %1394, label %1395, label %1398

1395:                                             ; preds = %1388
  %1396 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1391
  %1397 = load i32, i32 addrspace(3)* %1396, align 16, !tbaa !14
  br label %1398

1398:                                             ; preds = %1395, %1388
  %1399 = phi float [ %1393, %1395 ], [ %1389, %1388 ]
  %1400 = phi i32 [ %1397, %1395 ], [ %1390, %1388 ]
  %1401 = or i32 %1215, 5
  %1402 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1401
  %1403 = load float, float addrspace(3)* %1402, align 4, !tbaa !18
  %1404 = fcmp contract ogt float %1403, %1399
  br i1 %1404, label %1405, label %1408

1405:                                             ; preds = %1398
  %1406 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1401
  %1407 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !14
  br label %1408

1408:                                             ; preds = %1405, %1398
  %1409 = phi float [ %1403, %1405 ], [ %1399, %1398 ]
  %1410 = phi i32 [ %1407, %1405 ], [ %1400, %1398 ]
  %1411 = or i32 %1215, 6
  %1412 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1411
  %1413 = load float, float addrspace(3)* %1412, align 8, !tbaa !18
  %1414 = fcmp contract ogt float %1413, %1409
  br i1 %1414, label %1415, label %1418

1415:                                             ; preds = %1408
  %1416 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1411
  %1417 = load i32, i32 addrspace(3)* %1416, align 8, !tbaa !14
  br label %1418

1418:                                             ; preds = %1415, %1408
  %1419 = phi float [ %1413, %1415 ], [ %1409, %1408 ]
  %1420 = phi i32 [ %1417, %1415 ], [ %1410, %1408 ]
  %1421 = or i32 %1215, 7
  %1422 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1421
  %1423 = load float, float addrspace(3)* %1422, align 4, !tbaa !18
  %1424 = fcmp contract ogt float %1423, %1419
  br i1 %1424, label %1425, label %1428

1425:                                             ; preds = %1418
  %1426 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1421
  %1427 = load i32, i32 addrspace(3)* %1426, align 4, !tbaa !14
  br label %1428

1428:                                             ; preds = %1425, %1418
  %1429 = phi float [ %1423, %1425 ], [ %1419, %1418 ]
  %1430 = phi i32 [ %1427, %1425 ], [ %1420, %1418 ]
  %1431 = add nuw nsw i32 %1215, 8
  %1432 = add i32 %1216, -8
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1230, label %1212, !llvm.loop !80

predication.split:                                ; preds = %unify.bb
  %1434 = add i32 %361, %351
  %1435 = sub nsw i32 %363, %37
  %1436 = load float*, float* addrspace(1)* %352, align 8, !tbaa !22
  %1437 = mul nsw i32 %1435, %21
  %1438 = add nsw i32 %1434, %1437
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds float, float* %1436, i64 %1439
  %1441 = bitcast float* %1440 to i32*
  %1442 = load i32, i32* %1441, align 4, !tbaa !18
  br label %predication.tail

predication.tail:                                 ; preds = %unify.bb, %predication.split
  %1443 = phi i32 [ %1442, %predication.split ], [ undef, %unify.bb ]
  %1444 = load float*, float* addrspace(1)* %350, align 8, !tbaa !30
  %1445 = zext i32 %353 to i64
  %1446 = getelementptr inbounds float, float* %1444, i64 %1445
  br i1 %371, label %predication.split2, label %predication.split4

predication.split2:                               ; preds = %predication.tail
  %1447 = bitcast float* %1446 to i32*
  store i32 %1443, i32* %1447, align 4, !tbaa !18
  br label %merged.branch.split

predication.split4:                               ; preds = %predication.tail
  store float 0.000000e+00, float* %1446, align 4, !tbaa !18
  br label %merged.branch.split

predication.split10:                              ; preds = %unify.bb6
  %1448 = add i32 %618, %608
  %1449 = sub nsw i32 %620, %37
  %1450 = load float*, float* addrspace(1)* %609, align 8, !tbaa !45
  %1451 = mul nsw i32 %1449, %77
  %1452 = add nsw i32 %1448, %1451
  %1453 = sext i32 %1452 to i64
  %1454 = getelementptr inbounds float, float* %1450, i64 %1453
  %1455 = bitcast float* %1454 to i32*
  %1456 = load i32, i32* %1455, align 4, !tbaa !18
  br label %predication.tail11

predication.tail11:                               ; preds = %unify.bb6, %predication.split10
  %1457 = phi i32 [ %1456, %predication.split10 ], [ undef, %unify.bb6 ]
  %1458 = load float*, float* addrspace(1)* %607, align 8, !tbaa !30
  %1459 = zext i32 %610 to i64
  %1460 = getelementptr inbounds float, float* %1458, i64 %1459
  br i1 %628, label %predication.split12, label %predication.split14

predication.split12:                              ; preds = %predication.tail11
  %1461 = bitcast float* %1460 to i32*
  store i32 %1457, i32* %1461, align 4, !tbaa !18
  br label %merged.branch.split8

predication.split14:                              ; preds = %predication.tail11
  store float 0.000000e+00, float* %1460, align 4, !tbaa !18
  br label %merged.branch.split8

merged.bb18:                                      ; preds = %merged.bb18, %merged.bb24
  %1462 = phi float [ %1467, %merged.bb18 ], [ %1477, %merged.bb24 ]
  %1463 = phi i32 [ %1468, %merged.bb18 ], [ %1478, %merged.bb24 ]
  %1464 = phi i32 [ %1469, %merged.bb18 ], [ %1472, %merged.bb24 ]
  %merged.select = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %merged.select27 = select i1 %949, i32 %1463, i32 %1463
  %1465 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select, i32 0, i32 %merged.select27
  %1466 = load float, float addrspace(3)* %1465, align 4, !tbaa !18
  %merged.select28 = select i1 %949, float %1462, float %1462
  %1467 = fadd contract float %merged.select28, %1466
  %merged.select29 = select i1 %949, i32 %1463, i32 %1463
  %1468 = add nuw nsw i32 %merged.select29, 1
  %merged.select30 = select i1 %949, i32 %1464, i32 %1464
  %1469 = add i32 %merged.select30, -1
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %merged.bb20, label %merged.bb18, !llvm.loop !81

merged.bb19:                                      ; preds = %merged.bb25
  %merged.select31 = select i1 %949, i32 %17, i32 %85
  %1471 = add i32 %merged.select31, -1
  %merged.select32 = select i1 %949, i32 %17, i32 %85
  %1472 = and i32 %merged.select32, 7
  %1473 = icmp ult i32 %1471, 7
  br i1 %1473, label %merged.bb24, label %merged.bb21

merged.bb20:                                      ; preds = %merged.bb18, %merged.bb24
  %1474 = phi float [ %1476, %merged.bb24 ], [ %1467, %merged.bb18 ]
  %merged.select33 = select i1 %949, float %1474, float %1474
  %merged.select34 = select i1 %949, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum
  store float %merged.select33, float addrspace(3)* %merged.select34, align 4, !tbaa !18
  br label %merged.bb23

merged.bb21:                                      ; preds = %merged.bb19
  %merged.select35 = select i1 %949, i32 %17, i32 %85
  %1475 = and i32 %merged.select35, -8
  br label %merged.bb26

merged.bb23:                                      ; preds = %merged.bb20, %unify.bb17, %merged.bb25
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %949, label %952, label %1005

merged.bb24:                                      ; preds = %merged.bb19, %merged.bb26
  %1476 = phi float [ undef, %merged.bb19 ], [ %1514, %merged.bb26 ]
  %1477 = phi float [ 0.000000e+00, %merged.bb19 ], [ %1514, %merged.bb26 ]
  %1478 = phi i32 [ 0, %merged.bb19 ], [ %1515, %merged.bb26 ]
  %1479 = icmp eq i32 %1472, 0
  br i1 %1479, label %merged.bb20, label %merged.bb18

merged.bb25:                                      ; preds = %unify.bb17
  %merged.select38 = select i1 %949, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum
  store float 0.000000e+00, float addrspace(3)* %merged.select38, align 4, !tbaa !18
  %merged.select39 = select i1 %949, i32 %17, i32 %85
  %1480 = icmp sgt i32 %merged.select39, 0
  br i1 %1480, label %merged.bb19, label %merged.bb23

merged.bb26:                                      ; preds = %merged.bb21, %merged.bb26
  %1481 = phi float [ 0.000000e+00, %merged.bb21 ], [ %1514, %merged.bb26 ]
  %1482 = phi i32 [ 0, %merged.bb21 ], [ %1515, %merged.bb26 ]
  %1483 = phi i32 [ %1475, %merged.bb21 ], [ %1516, %merged.bb26 ]
  %merged.select40 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %merged.select41 = select i1 %949, i32 %1482, i32 %1482
  %1484 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select40, i32 0, i32 %merged.select41
  %1485 = load float, float addrspace(3)* %1484, align 16, !tbaa !18
  %merged.select42 = select i1 %949, float %1481, float %1481
  %1486 = fadd contract float %merged.select42, %1485
  %merged.select43 = select i1 %949, i32 %1482, i32 %1482
  %1487 = or i32 %merged.select43, 1
  %merged.select44 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %1488 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select44, i32 0, i32 %1487
  %1489 = load float, float addrspace(3)* %1488, align 4, !tbaa !18
  %1490 = fadd contract float %1486, %1489
  %merged.select45 = select i1 %949, i32 %1482, i32 %1482
  %1491 = or i32 %merged.select45, 2
  %merged.select46 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %1492 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select46, i32 0, i32 %1491
  %1493 = load float, float addrspace(3)* %1492, align 8, !tbaa !18
  %1494 = fadd contract float %1490, %1493
  %merged.select47 = select i1 %949, i32 %1482, i32 %1482
  %1495 = or i32 %merged.select47, 3
  %merged.select48 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %1496 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select48, i32 0, i32 %1495
  %1497 = load float, float addrspace(3)* %1496, align 4, !tbaa !18
  %1498 = fadd contract float %1494, %1497
  %merged.select49 = select i1 %949, i32 %1482, i32 %1482
  %1499 = or i32 %merged.select49, 4
  %merged.select50 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %1500 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select50, i32 0, i32 %1499
  %1501 = load float, float addrspace(3)* %1500, align 16, !tbaa !18
  %1502 = fadd contract float %1498, %1501
  %merged.select51 = select i1 %949, i32 %1482, i32 %1482
  %1503 = or i32 %merged.select51, 5
  %merged.select52 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %1504 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select52, i32 0, i32 %1503
  %1505 = load float, float addrspace(3)* %1504, align 4, !tbaa !18
  %1506 = fadd contract float %1502, %1505
  %merged.select53 = select i1 %949, i32 %1482, i32 %1482
  %1507 = or i32 %merged.select53, 6
  %merged.select54 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %1508 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select54, i32 0, i32 %1507
  %1509 = load float, float addrspace(3)* %1508, align 8, !tbaa !18
  %1510 = fadd contract float %1506, %1509
  %merged.select55 = select i1 %949, i32 %1482, i32 %1482
  %1511 = or i32 %merged.select55, 7
  %merged.select56 = select i1 %949, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum
  %1512 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* %merged.select56, i32 0, i32 %1511
  %1513 = load float, float addrspace(3)* %1512, align 4, !tbaa !18
  %1514 = fadd contract float %1510, %1513
  %merged.select57 = select i1 %949, i32 %1482, i32 %1482
  %1515 = add nuw nsw i32 %merged.select57, 8
  %merged.select58 = select i1 %949, i32 %1483, i32 %1483
  %1516 = add i32 %merged.select58, -8
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %merged.bb24, label %merged.bb26, !llvm.loop !82
}

; Function Attrs: convergent nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

attributes #0 = { convergent norecurse nounwind "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 12.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-4.2.0 21161 b204d7f0cae65b6cd4446eec50fc1fb675d582af)"}
!4 = !{i32 0, i32 1024}
!5 = !{!6, !7, i64 32}
!6 = !{!"_ZTS13params_unique", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 44}
!12 = !{!6, !10, i64 40}
!13 = !{!6, !7, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !7, i64 8}
!17 = !{!6, !7, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !8, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!6, !7, i64 48}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{!6, !7, i64 56}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = !{!6, !7, i64 72}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = !{!6, !7, i64 80}
!34 = distinct !{!34, !21}
!35 = !{!6, !7, i64 88}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = !{!6, !7, i64 96}
!41 = distinct !{!41, !21}
!42 = !{!6, !7, i64 104}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = !{!6, !7, i64 112}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = !{!6, !7, i64 120}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = !{!6, !7, i64 128}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = !{!6, !7, i64 136}
!70 = distinct !{!70, !21}
!71 = !{!6, !7, i64 152}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !78}
!82 = distinct !{!82, !21}
