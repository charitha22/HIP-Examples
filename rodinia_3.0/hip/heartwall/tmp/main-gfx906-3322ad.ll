; ModuleID = 'main.cu'
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

161:                                              ; preds = %149, %161
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
  br i1 %114, label %1459, label %194

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

215:                                              ; preds = %202, %215
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

249:                                              ; preds = %241, %249
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

281:                                              ; preds = %276, %339
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

310:                                              ; preds = %308, %335
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

321:                                              ; preds = %313, %321
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
  br i1 %346, label %347, label %394

347:                                              ; preds = %345
  %348 = add nsw i32 %35, %21
  %349 = add nsw i32 %37, %23
  %350 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %351 = xor i32 %35, -1
  %352 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 7
  br label %353

353:                                              ; preds = %347, %391
  %354 = phi i32 [ %113, %347 ], [ %392, %391 ]
  %355 = add nuw nsw i32 %354, 1
  %356 = freeze i32 %355
  %357 = freeze i32 %39
  %358 = sdiv i32 %356, %357
  %359 = mul i32 %358, %357
  %360 = sub i32 %356, %359
  %361 = icmp eq i32 %360, 0
  %362 = select i1 %361, i32 %39, i32 %360
  %363 = sext i1 %361 to i32
  %364 = add nsw i32 %358, %363
  %365 = icmp sle i32 %362, %35
  %366 = icmp sgt i32 %362, %348
  %367 = or i1 %365, %366
  %368 = icmp slt i32 %364, %37
  %369 = or i1 %367, %368
  %370 = xor i1 %369, true
  %371 = icmp slt i32 %364, %349
  %372 = and i1 %371, %370
  br i1 %372, label %373, label %387

373:                                              ; preds = %353
  %374 = add i32 %362, %351
  %375 = sub nsw i32 %364, %37
  %376 = load float*, float* addrspace(1)* %352, align 8, !tbaa !22
  %377 = mul nsw i32 %375, %21
  %378 = add nsw i32 %374, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %376, i64 %379
  %381 = bitcast float* %380 to i32*
  %382 = load i32, i32* %381, align 4, !tbaa !18
  %383 = load float*, float* addrspace(1)* %350, align 8, !tbaa !29
  %384 = zext i32 %354 to i64
  %385 = getelementptr inbounds float, float* %383, i64 %384
  %386 = bitcast float* %385 to i32*
  store i32 %382, i32* %386, align 4, !tbaa !18
  br label %391

387:                                              ; preds = %353
  %388 = load float*, float* addrspace(1)* %350, align 8, !tbaa !29
  %389 = zext i32 %354 to i64
  %390 = getelementptr inbounds float, float* %388, i64 %389
  store float 0.000000e+00, float* %390, align 4, !tbaa !18
  br label %391

391:                                              ; preds = %387, %373
  %392 = add nuw nsw i32 %354, 64
  %393 = icmp slt i32 %392, %43
  br i1 %393, label %353, label %394, !llvm.loop !30

394:                                              ; preds = %391, %345
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %395 = icmp slt i32 %113, %41
  br i1 %395, label %396, label %417

396:                                              ; preds = %394
  %397 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %398 = icmp sgt i32 %39, 0
  br label %399

399:                                              ; preds = %396, %414
  %400 = phi i32 [ %113, %396 ], [ %415, %414 ]
  %401 = mul nsw i32 %400, %39
  %402 = add nsw i32 %401, %39
  br i1 %398, label %403, label %414

403:                                              ; preds = %399
  %404 = load float*, float* addrspace(1)* %397, align 8, !tbaa !29
  br label %405

405:                                              ; preds = %403, %405
  %406 = phi float [ 0.000000e+00, %403 ], [ %411, %405 ]
  %407 = phi i32 [ %401, %403 ], [ %412, %405 ]
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds float, float* %404, i64 %408
  %410 = load float, float* %409, align 4, !tbaa !18
  %411 = fadd contract float %406, %410
  store float %411, float* %409, align 4, !tbaa !18
  %412 = add nsw i32 %407, 1
  %413 = icmp slt i32 %412, %402
  br i1 %413, label %405, label %414, !llvm.loop !31

414:                                              ; preds = %405, %399
  %415 = add nuw nsw i32 %400, 64
  %416 = icmp slt i32 %415, %41
  br i1 %416, label %399, label %417, !llvm.loop !32

417:                                              ; preds = %414, %394
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %418 = icmp slt i32 %113, %47
  br i1 %418, label %419, label %451

419:                                              ; preds = %417
  %420 = add i32 %51, -1
  %421 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %422 = load float*, float* addrspace(1)* %421, align 8, !tbaa !29
  %423 = add i32 %49, -2
  %424 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %425 = load float*, float* addrspace(1)* %424, align 8, !tbaa !33
  br label %426

426:                                              ; preds = %419, %426
  %427 = phi i32 [ %113, %419 ], [ %449, %426 ]
  %428 = add nuw nsw i32 %427, 1
  %429 = freeze i32 %428
  %430 = freeze i32 %45
  %431 = sdiv i32 %429, %430
  %432 = mul i32 %431, %430
  %433 = sub i32 %429, %432
  %434 = icmp eq i32 %433, 0
  %435 = select i1 %434, i32 %45, i32 %433
  %436 = sext i1 %434 to i32
  %437 = add i32 %420, %431
  %438 = add i32 %437, %436
  %439 = mul nsw i32 %438, %39
  %440 = add i32 %423, %435
  %441 = add i32 %440, %439
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds float, float* %422, i64 %442
  %444 = bitcast float* %443 to i32*
  %445 = load i32, i32* %444, align 4, !tbaa !18
  %446 = zext i32 %427 to i64
  %447 = getelementptr inbounds float, float* %425, i64 %446
  %448 = bitcast float* %447 to i32*
  store i32 %445, i32* %448, align 4, !tbaa !18
  %449 = add nuw nsw i32 %427, 64
  %450 = icmp slt i32 %449, %47
  br i1 %450, label %426, label %451, !llvm.loop !34

451:                                              ; preds = %426, %417
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %452 = icmp slt i32 %113, %59
  br i1 %452, label %453, label %485

453:                                              ; preds = %451
  %454 = add i32 %55, -1
  %455 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %456 = load float*, float* addrspace(1)* %455, align 8, !tbaa !29
  %457 = add i32 %53, -2
  %458 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %459 = load float*, float* addrspace(1)* %458, align 8, !tbaa !35
  br label %460

460:                                              ; preds = %453, %460
  %461 = phi i32 [ %113, %453 ], [ %483, %460 ]
  %462 = add nuw nsw i32 %461, 1
  %463 = freeze i32 %462
  %464 = freeze i32 %57
  %465 = sdiv i32 %463, %464
  %466 = mul i32 %465, %464
  %467 = sub i32 %463, %466
  %468 = icmp eq i32 %467, 0
  %469 = select i1 %468, i32 %57, i32 %467
  %470 = sext i1 %468 to i32
  %471 = add i32 %454, %465
  %472 = add i32 %471, %470
  %473 = mul nsw i32 %472, %39
  %474 = add i32 %457, %469
  %475 = add i32 %474, %473
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %456, i64 %476
  %478 = bitcast float* %477 to i32*
  %479 = load i32, i32* %478, align 4, !tbaa !18
  %480 = zext i32 %461 to i64
  %481 = getelementptr inbounds float, float* %459, i64 %480
  %482 = bitcast float* %481 to i32*
  store i32 %479, i32* %482, align 4, !tbaa !18
  %483 = add nuw nsw i32 %461, 64
  %484 = icmp slt i32 %483, %59
  br i1 %484, label %460, label %485, !llvm.loop !36

485:                                              ; preds = %460, %451
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %452, label %486, label %501

486:                                              ; preds = %485
  %487 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %488 = load float*, float* addrspace(1)* %487, align 8, !tbaa !33
  %489 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %490 = load float*, float* addrspace(1)* %489, align 8, !tbaa !35
  br label %491

491:                                              ; preds = %486, %491
  %492 = phi i32 [ %113, %486 ], [ %499, %491 ]
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds float, float* %488, i64 %493
  %495 = load float, float* %494, align 4, !tbaa !18
  %496 = getelementptr inbounds float, float* %490, i64 %493
  %497 = load float, float* %496, align 4, !tbaa !18
  %498 = fsub contract float %495, %497
  store float %498, float* %496, align 4, !tbaa !18
  %499 = add nuw nsw i32 %492, 64
  %500 = icmp slt i32 %499, %59
  br i1 %500, label %491, label %501, !llvm.loop !37

501:                                              ; preds = %491, %485
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %502 = icmp slt i32 %113, %57
  br i1 %502, label %503, label %523

503:                                              ; preds = %501
  %504 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %505 = icmp sgt i32 %59, 0
  br label %506

506:                                              ; preds = %503, %520
  %507 = phi i32 [ %113, %503 ], [ %521, %520 ]
  %508 = add nsw i32 %507, %59
  br i1 %505, label %509, label %520

509:                                              ; preds = %506
  %510 = load float*, float* addrspace(1)* %504, align 8, !tbaa !35
  br label %511

511:                                              ; preds = %509, %511
  %512 = phi float [ 0.000000e+00, %509 ], [ %517, %511 ]
  %513 = phi i32 [ %507, %509 ], [ %518, %511 ]
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds float, float* %510, i64 %514
  %516 = load float, float* %515, align 4, !tbaa !18
  %517 = fadd contract float %512, %516
  store float %517, float* %515, align 4, !tbaa !18
  %518 = add nsw i32 %513, %57
  %519 = icmp slt i32 %518, %508
  br i1 %519, label %511, label %520, !llvm.loop !38

520:                                              ; preds = %511, %506
  %521 = add nuw nsw i32 %507, 64
  %522 = icmp slt i32 %521, %57
  br i1 %522, label %506, label %523, !llvm.loop !39

523:                                              ; preds = %520, %501
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %524 = icmp slt i32 %113, %63
  br i1 %524, label %525, label %557

525:                                              ; preds = %523
  %526 = add i32 %67, -1
  %527 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %528 = load float*, float* addrspace(1)* %527, align 8, !tbaa !35
  %529 = add i32 %65, -2
  %530 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %531 = load float*, float* addrspace(1)* %530, align 8, !tbaa !40
  br label %532

532:                                              ; preds = %525, %532
  %533 = phi i32 [ %113, %525 ], [ %555, %532 ]
  %534 = add nuw nsw i32 %533, 1
  %535 = freeze i32 %534
  %536 = freeze i32 %61
  %537 = sdiv i32 %535, %536
  %538 = mul i32 %537, %536
  %539 = sub i32 %535, %538
  %540 = icmp eq i32 %539, 0
  %541 = select i1 %540, i32 %61, i32 %539
  %542 = sext i1 %540 to i32
  %543 = add i32 %526, %537
  %544 = add i32 %543, %542
  %545 = mul nsw i32 %544, %57
  %546 = add i32 %529, %541
  %547 = add i32 %546, %545
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds float, float* %528, i64 %548
  %550 = bitcast float* %549 to i32*
  %551 = load i32, i32* %550, align 4, !tbaa !18
  %552 = zext i32 %533 to i64
  %553 = getelementptr inbounds float, float* %531, i64 %552
  %554 = bitcast float* %553 to i32*
  store i32 %551, i32* %554, align 4, !tbaa !18
  %555 = add nuw nsw i32 %533, 64
  %556 = icmp slt i32 %555, %63
  br i1 %556, label %532, label %557, !llvm.loop !41

557:                                              ; preds = %532, %523
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %558 = icmp slt i32 %113, %75
  br i1 %558, label %559, label %591

559:                                              ; preds = %557
  %560 = add i32 %71, -1
  %561 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %562 = load float*, float* addrspace(1)* %561, align 8, !tbaa !35
  %563 = add i32 %69, -2
  %564 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %565 = load float*, float* addrspace(1)* %564, align 8, !tbaa !42
  br label %566

566:                                              ; preds = %559, %566
  %567 = phi i32 [ %113, %559 ], [ %589, %566 ]
  %568 = add nuw nsw i32 %567, 1
  %569 = freeze i32 %568
  %570 = freeze i32 %73
  %571 = sdiv i32 %569, %570
  %572 = mul i32 %571, %570
  %573 = sub i32 %569, %572
  %574 = icmp eq i32 %573, 0
  %575 = select i1 %574, i32 %73, i32 %573
  %576 = sext i1 %574 to i32
  %577 = add i32 %560, %571
  %578 = add i32 %577, %576
  %579 = mul nsw i32 %578, %57
  %580 = add i32 %563, %575
  %581 = add i32 %580, %579
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds float, float* %562, i64 %582
  %584 = bitcast float* %583 to i32*
  %585 = load i32, i32* %584, align 4, !tbaa !18
  %586 = zext i32 %567 to i64
  %587 = getelementptr inbounds float, float* %565, i64 %586
  %588 = bitcast float* %587 to i32*
  store i32 %585, i32* %588, align 4, !tbaa !18
  %589 = add nuw nsw i32 %567, 64
  %590 = icmp slt i32 %589, %75
  br i1 %590, label %566, label %591, !llvm.loop !43

591:                                              ; preds = %566, %557
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %558, label %592, label %607

592:                                              ; preds = %591
  %593 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %594 = load float*, float* addrspace(1)* %593, align 8, !tbaa !40
  %595 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %596 = load float*, float* addrspace(1)* %595, align 8, !tbaa !42
  br label %597

597:                                              ; preds = %592, %597
  %598 = phi i32 [ %113, %592 ], [ %605, %597 ]
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds float, float* %594, i64 %599
  %601 = load float, float* %600, align 4, !tbaa !18
  %602 = getelementptr inbounds float, float* %596, i64 %599
  %603 = load float, float* %602, align 4, !tbaa !18
  %604 = fsub contract float %601, %603
  store float %604, float* %602, align 4, !tbaa !18
  %605 = add nuw nsw i32 %598, 64
  %606 = icmp slt i32 %605, %75
  br i1 %606, label %597, label %607, !llvm.loop !44

607:                                              ; preds = %597, %591
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %608 = icmp slt i32 %113, %81
  br i1 %608, label %609, label %623

609:                                              ; preds = %607
  %610 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 7
  %611 = load float*, float* addrspace(1)* %610, align 8, !tbaa !22
  %612 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 15
  %613 = load float*, float* addrspace(1)* %612, align 8, !tbaa !45
  br label %614

614:                                              ; preds = %609, %614
  %615 = phi i32 [ %113, %609 ], [ %621, %614 ]
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds float, float* %611, i64 %616
  %618 = load float, float* %617, align 4, !tbaa !18
  %619 = fmul contract float %618, %618
  %620 = getelementptr inbounds float, float* %613, i64 %616
  store float %619, float* %620, align 4, !tbaa !18
  %621 = add nuw nsw i32 %615, 64
  %622 = icmp slt i32 %621, %81
  br i1 %622, label %614, label %623, !llvm.loop !46

623:                                              ; preds = %614, %607
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %346, label %624, label %671

624:                                              ; preds = %623
  %625 = add nsw i32 %77, %35
  %626 = add nsw i32 %79, %37
  %627 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %628 = xor i32 %35, -1
  %629 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 15
  br label %630

630:                                              ; preds = %624, %668
  %631 = phi i32 [ %113, %624 ], [ %669, %668 ]
  %632 = add nuw nsw i32 %631, 1
  %633 = freeze i32 %632
  %634 = freeze i32 %39
  %635 = sdiv i32 %633, %634
  %636 = mul i32 %635, %634
  %637 = sub i32 %633, %636
  %638 = icmp eq i32 %637, 0
  %639 = select i1 %638, i32 %39, i32 %637
  %640 = sext i1 %638 to i32
  %641 = add nsw i32 %635, %640
  %642 = icmp sle i32 %639, %35
  %643 = icmp sgt i32 %639, %625
  %644 = or i1 %642, %643
  %645 = icmp slt i32 %641, %37
  %646 = or i1 %644, %645
  %647 = xor i1 %646, true
  %648 = icmp slt i32 %641, %626
  %649 = and i1 %648, %647
  br i1 %649, label %650, label %664

650:                                              ; preds = %630
  %651 = add i32 %639, %628
  %652 = sub nsw i32 %641, %37
  %653 = load float*, float* addrspace(1)* %629, align 8, !tbaa !45
  %654 = mul nsw i32 %652, %77
  %655 = add nsw i32 %651, %654
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds float, float* %653, i64 %656
  %658 = bitcast float* %657 to i32*
  %659 = load i32, i32* %658, align 4, !tbaa !18
  %660 = load float*, float* addrspace(1)* %627, align 8, !tbaa !29
  %661 = zext i32 %631 to i64
  %662 = getelementptr inbounds float, float* %660, i64 %661
  %663 = bitcast float* %662 to i32*
  store i32 %659, i32* %663, align 4, !tbaa !18
  br label %668

664:                                              ; preds = %630
  %665 = load float*, float* addrspace(1)* %627, align 8, !tbaa !29
  %666 = zext i32 %631 to i64
  %667 = getelementptr inbounds float, float* %665, i64 %666
  store float 0.000000e+00, float* %667, align 4, !tbaa !18
  br label %668

668:                                              ; preds = %664, %650
  %669 = add nuw nsw i32 %631, 64
  %670 = icmp slt i32 %669, %43
  br i1 %670, label %630, label %671, !llvm.loop !47

671:                                              ; preds = %668, %623
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %395, label %672, label %693

672:                                              ; preds = %671
  %673 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %674 = icmp sgt i32 %39, 0
  br label %675

675:                                              ; preds = %672, %690
  %676 = phi i32 [ %113, %672 ], [ %691, %690 ]
  %677 = mul nsw i32 %676, %39
  %678 = add nsw i32 %677, %39
  br i1 %674, label %679, label %690

679:                                              ; preds = %675
  %680 = load float*, float* addrspace(1)* %673, align 8, !tbaa !29
  br label %681

681:                                              ; preds = %679, %681
  %682 = phi float [ 0.000000e+00, %679 ], [ %687, %681 ]
  %683 = phi i32 [ %677, %679 ], [ %688, %681 ]
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds float, float* %680, i64 %684
  %686 = load float, float* %685, align 4, !tbaa !18
  %687 = fadd contract float %682, %686
  store float %687, float* %685, align 4, !tbaa !18
  %688 = add nsw i32 %683, 1
  %689 = icmp slt i32 %688, %678
  br i1 %689, label %681, label %690, !llvm.loop !48

690:                                              ; preds = %681, %675
  %691 = add nuw nsw i32 %676, 64
  %692 = icmp slt i32 %691, %41
  br i1 %692, label %675, label %693, !llvm.loop !49

693:                                              ; preds = %690, %671
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %418, label %694, label %726

694:                                              ; preds = %693
  %695 = add i32 %51, -1
  %696 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %697 = load float*, float* addrspace(1)* %696, align 8, !tbaa !29
  %698 = add i32 %49, -2
  %699 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %700 = load float*, float* addrspace(1)* %699, align 8, !tbaa !33
  br label %701

701:                                              ; preds = %694, %701
  %702 = phi i32 [ %113, %694 ], [ %724, %701 ]
  %703 = add nuw nsw i32 %702, 1
  %704 = freeze i32 %703
  %705 = freeze i32 %45
  %706 = sdiv i32 %704, %705
  %707 = mul i32 %706, %705
  %708 = sub i32 %704, %707
  %709 = icmp eq i32 %708, 0
  %710 = select i1 %709, i32 %45, i32 %708
  %711 = sext i1 %709 to i32
  %712 = add i32 %695, %706
  %713 = add i32 %712, %711
  %714 = mul nsw i32 %713, %39
  %715 = add i32 %698, %710
  %716 = add i32 %715, %714
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds float, float* %697, i64 %717
  %719 = bitcast float* %718 to i32*
  %720 = load i32, i32* %719, align 4, !tbaa !18
  %721 = zext i32 %702 to i64
  %722 = getelementptr inbounds float, float* %700, i64 %721
  %723 = bitcast float* %722 to i32*
  store i32 %720, i32* %723, align 4, !tbaa !18
  %724 = add nuw nsw i32 %702, 64
  %725 = icmp slt i32 %724, %47
  br i1 %725, label %701, label %726, !llvm.loop !50

726:                                              ; preds = %701, %693
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %452, label %727, label %759

727:                                              ; preds = %726
  %728 = add i32 %55, -1
  %729 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 10
  %730 = load float*, float* addrspace(1)* %729, align 8, !tbaa !29
  %731 = add i32 %53, -2
  %732 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %733 = load float*, float* addrspace(1)* %732, align 8, !tbaa !35
  br label %734

734:                                              ; preds = %727, %734
  %735 = phi i32 [ %113, %727 ], [ %757, %734 ]
  %736 = add nuw nsw i32 %735, 1
  %737 = freeze i32 %736
  %738 = freeze i32 %57
  %739 = sdiv i32 %737, %738
  %740 = mul i32 %739, %738
  %741 = sub i32 %737, %740
  %742 = icmp eq i32 %741, 0
  %743 = select i1 %742, i32 %57, i32 %741
  %744 = sext i1 %742 to i32
  %745 = add i32 %728, %739
  %746 = add i32 %745, %744
  %747 = mul nsw i32 %746, %39
  %748 = add i32 %731, %743
  %749 = add i32 %748, %747
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds float, float* %730, i64 %750
  %752 = bitcast float* %751 to i32*
  %753 = load i32, i32* %752, align 4, !tbaa !18
  %754 = zext i32 %735 to i64
  %755 = getelementptr inbounds float, float* %733, i64 %754
  %756 = bitcast float* %755 to i32*
  store i32 %753, i32* %756, align 4, !tbaa !18
  %757 = add nuw nsw i32 %735, 64
  %758 = icmp slt i32 %757, %59
  br i1 %758, label %734, label %759, !llvm.loop !51

759:                                              ; preds = %734, %726
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %452, label %760, label %765

760:                                              ; preds = %759
  %761 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 11
  %762 = load float*, float* addrspace(1)* %761, align 8, !tbaa !33
  %763 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %764 = load float*, float* addrspace(1)* %763, align 8, !tbaa !35
  br label %769

765:                                              ; preds = %769, %759
  br i1 %502, label %766, label %796

766:                                              ; preds = %765
  %767 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %768 = icmp sgt i32 %59, 0
  br label %779

769:                                              ; preds = %760, %769
  %770 = phi i32 [ %113, %760 ], [ %777, %769 ]
  %771 = zext i32 %770 to i64
  %772 = getelementptr inbounds float, float* %762, i64 %771
  %773 = load float, float* %772, align 4, !tbaa !18
  %774 = getelementptr inbounds float, float* %764, i64 %771
  %775 = load float, float* %774, align 4, !tbaa !18
  %776 = fsub contract float %773, %775
  store float %776, float* %774, align 4, !tbaa !18
  %777 = add nuw nsw i32 %770, 64
  %778 = icmp slt i32 %777, %59
  br i1 %778, label %769, label %765, !llvm.loop !52

779:                                              ; preds = %766, %793
  %780 = phi i32 [ %113, %766 ], [ %794, %793 ]
  %781 = add nsw i32 %780, %59
  br i1 %768, label %782, label %793

782:                                              ; preds = %779
  %783 = load float*, float* addrspace(1)* %767, align 8, !tbaa !35
  br label %784

784:                                              ; preds = %782, %784
  %785 = phi float [ 0.000000e+00, %782 ], [ %790, %784 ]
  %786 = phi i32 [ %780, %782 ], [ %791, %784 ]
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds float, float* %783, i64 %787
  %789 = load float, float* %788, align 4, !tbaa !18
  %790 = fadd contract float %785, %789
  store float %790, float* %788, align 4, !tbaa !18
  %791 = add nsw i32 %786, %57
  %792 = icmp slt i32 %791, %781
  br i1 %792, label %784, label %793, !llvm.loop !53

793:                                              ; preds = %784, %779
  %794 = add nuw nsw i32 %780, 64
  %795 = icmp slt i32 %794, %57
  br i1 %795, label %779, label %796, !llvm.loop !54

796:                                              ; preds = %793, %765
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %524, label %797, label %829

797:                                              ; preds = %796
  %798 = add i32 %67, -1
  %799 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %800 = load float*, float* addrspace(1)* %799, align 8, !tbaa !35
  %801 = add i32 %65, -2
  %802 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %803 = load float*, float* addrspace(1)* %802, align 8, !tbaa !40
  br label %804

804:                                              ; preds = %797, %804
  %805 = phi i32 [ %113, %797 ], [ %827, %804 ]
  %806 = add nuw nsw i32 %805, 1
  %807 = freeze i32 %806
  %808 = freeze i32 %61
  %809 = sdiv i32 %807, %808
  %810 = mul i32 %809, %808
  %811 = sub i32 %807, %810
  %812 = icmp eq i32 %811, 0
  %813 = select i1 %812, i32 %61, i32 %811
  %814 = sext i1 %812 to i32
  %815 = add i32 %798, %809
  %816 = add i32 %815, %814
  %817 = mul nsw i32 %816, %57
  %818 = add i32 %801, %813
  %819 = add i32 %818, %817
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds float, float* %800, i64 %820
  %822 = bitcast float* %821 to i32*
  %823 = load i32, i32* %822, align 4, !tbaa !18
  %824 = zext i32 %805 to i64
  %825 = getelementptr inbounds float, float* %803, i64 %824
  %826 = bitcast float* %825 to i32*
  store i32 %823, i32* %826, align 4, !tbaa !18
  %827 = add nuw nsw i32 %805, 64
  %828 = icmp slt i32 %827, %63
  br i1 %828, label %804, label %829, !llvm.loop !55

829:                                              ; preds = %804, %796
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %558, label %830, label %862

830:                                              ; preds = %829
  %831 = add i32 %71, -1
  %832 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 12
  %833 = load float*, float* addrspace(1)* %832, align 8, !tbaa !35
  %834 = add i32 %69, -2
  %835 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %836 = load float*, float* addrspace(1)* %835, align 8, !tbaa !56
  br label %837

837:                                              ; preds = %830, %837
  %838 = phi i32 [ %113, %830 ], [ %860, %837 ]
  %839 = add nuw nsw i32 %838, 1
  %840 = freeze i32 %839
  %841 = freeze i32 %73
  %842 = sdiv i32 %840, %841
  %843 = mul i32 %842, %841
  %844 = sub i32 %840, %843
  %845 = icmp eq i32 %844, 0
  %846 = select i1 %845, i32 %73, i32 %844
  %847 = sext i1 %845 to i32
  %848 = add i32 %831, %842
  %849 = add i32 %848, %847
  %850 = mul nsw i32 %849, %57
  %851 = add i32 %834, %846
  %852 = add i32 %851, %850
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds float, float* %833, i64 %853
  %855 = bitcast float* %854 to i32*
  %856 = load i32, i32* %855, align 4, !tbaa !18
  %857 = zext i32 %838 to i64
  %858 = getelementptr inbounds float, float* %836, i64 %857
  %859 = bitcast float* %858 to i32*
  store i32 %856, i32* %859, align 4, !tbaa !18
  %860 = add nuw nsw i32 %838, 64
  %861 = icmp slt i32 %860, %75
  br i1 %861, label %837, label %862, !llvm.loop !57

862:                                              ; preds = %837, %829
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %558, label %863, label %878

863:                                              ; preds = %862
  %864 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 13
  %865 = load float*, float* addrspace(1)* %864, align 8, !tbaa !40
  %866 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %867 = load float*, float* addrspace(1)* %866, align 8, !tbaa !56
  br label %868

868:                                              ; preds = %863, %868
  %869 = phi i32 [ %113, %863 ], [ %876, %868 ]
  %870 = zext i32 %869 to i64
  %871 = getelementptr inbounds float, float* %865, i64 %870
  %872 = load float, float* %871, align 4, !tbaa !18
  %873 = getelementptr inbounds float, float* %867, i64 %870
  %874 = load float, float* %873, align 4, !tbaa !18
  %875 = fsub contract float %872, %874
  store float %875, float* %873, align 4, !tbaa !18
  %876 = add nuw nsw i32 %869, 64
  %877 = icmp slt i32 %876, %75
  br i1 %877, label %868, label %878, !llvm.loop !58

878:                                              ; preds = %868, %862
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %558, label %879, label %920

879:                                              ; preds = %878
  %880 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %881 = load float*, float* addrspace(1)* %880, align 8, !tbaa !42
  %882 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %883 = load float*, float* addrspace(1)* %882, align 8, !tbaa !56
  %884 = sitofp i32 %19 to float
  br label %885

885:                                              ; preds = %879, %885
  %886 = phi i32 [ %113, %879 ], [ %918, %885 ]
  %887 = zext i32 %886 to i64
  %888 = getelementptr inbounds float, float* %881, i64 %887
  %889 = load float, float* %888, align 4, !tbaa !18
  %890 = getelementptr inbounds float, float* %883, i64 %887
  %891 = load float, float* %890, align 4, !tbaa !18
  %892 = fmul contract float %889, %889
  %893 = fdiv contract float %892, %884
  %894 = fsub contract float %891, %893
  %895 = fcmp contract olt float %894, 0.000000e+00
  %896 = select i1 %895, float 0.000000e+00, float %894
  %897 = fcmp olt float %896, 0x39F0000000000000
  %898 = select i1 %897, float 0x41F0000000000000, float 1.000000e+00
  %899 = fmul float %896, %898
  %900 = tail call float @llvm.sqrt.f32(float %899) #4
  %901 = bitcast float %900 to i32
  %902 = add nsw i32 %901, -1
  %903 = bitcast i32 %902 to float
  %904 = add nsw i32 %901, 1
  %905 = bitcast i32 %904 to float
  %906 = tail call i1 @llvm.amdgcn.class.f32(float %899, i32 608) #4
  %907 = select i1 %897, float 0x3EF0000000000000, float 1.000000e+00
  %908 = fneg float %905
  %909 = tail call float @llvm.fma.f32(float %908, float %900, float %899) #4
  %910 = fcmp ogt float %909, 0.000000e+00
  %911 = fneg float %903
  %912 = tail call float @llvm.fma.f32(float %911, float %900, float %899) #4
  %913 = fcmp ole float %912, 0.000000e+00
  %914 = select i1 %913, float %903, float %900
  %915 = select i1 %910, float %905, float %914
  %916 = fmul float %907, %915
  %917 = select i1 %906, float %899, float %916
  store float %917, float* %890, align 4, !tbaa !18
  %918 = add nuw nsw i32 %886, 64
  %919 = icmp slt i32 %918, %75
  br i1 %919, label %885, label %920, !llvm.loop !59

920:                                              ; preds = %885, %878
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %921 = icmp slt i32 %113, %87
  br i1 %921, label %922, label %934

922:                                              ; preds = %920
  %923 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 17
  %924 = load float*, float* addrspace(1)* %923, align 8, !tbaa !60
  br label %925

925:                                              ; preds = %922, %925
  %926 = phi i32 [ %113, %922 ], [ %932, %925 ]
  %927 = zext i32 %926 to i64
  %928 = getelementptr inbounds float, float* %247, i64 %927
  %929 = load float, float* %928, align 4, !tbaa !18
  %930 = fmul contract float %929, %929
  %931 = getelementptr inbounds float, float* %924, i64 %927
  store float %930, float* %931, align 4, !tbaa !18
  %932 = add nuw nsw i32 %926, 64
  %933 = icmp slt i32 %932, %87
  br i1 %933, label %925, label %934, !llvm.loop !61

934:                                              ; preds = %925, %920
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %935 = icmp slt i32 %113, %17
  br i1 %935, label %936, label %960

936:                                              ; preds = %934
  %937 = icmp sgt i32 %15, 0
  br i1 %937, label %938, label %955

938:                                              ; preds = %936, %951
  %939 = phi i32 [ %953, %951 ], [ %113, %936 ]
  %940 = mul nsw i32 %939, %15
  br label %941

941:                                              ; preds = %938, %941
  %942 = phi float [ 0.000000e+00, %938 ], [ %948, %941 ]
  %943 = phi i32 [ 0, %938 ], [ %949, %941 ]
  %944 = add nsw i32 %943, %940
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds float, float* %247, i64 %945
  %947 = load float, float* %946, align 4, !tbaa !18
  %948 = fadd contract float %942, %947
  %949 = add nuw nsw i32 %943, 1
  %950 = icmp eq i32 %949, %15
  br i1 %950, label %951, label %941, !llvm.loop !62

951:                                              ; preds = %941
  %952 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %939
  store float %948, float addrspace(3)* %952, align 4, !tbaa !18
  %953 = add nuw nsw i32 %939, 64
  %954 = icmp slt i32 %953, %17
  br i1 %954, label %938, label %960, !llvm.loop !63

955:                                              ; preds = %936, %955
  %956 = phi i32 [ %958, %955 ], [ %113, %936 ]
  %957 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %956
  store float 0.000000e+00, float addrspace(3)* %957, align 4, !tbaa !18
  %958 = add nuw nsw i32 %956, 64
  %959 = icmp slt i32 %958, %17
  br i1 %959, label %955, label %960, !llvm.loop !63

960:                                              ; preds = %955, %951, %934
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %961 = icmp slt i32 %113, %83
  br i1 %961, label %962, label %989

962:                                              ; preds = %960
  %963 = icmp sgt i32 %85, 0
  br i1 %963, label %964, label %984

964:                                              ; preds = %962
  %965 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 17
  %966 = load float*, float* addrspace(1)* %965, align 8, !tbaa !60
  br label %967

967:                                              ; preds = %964, %980
  %968 = phi i32 [ %982, %980 ], [ %113, %964 ]
  br label %969

969:                                              ; preds = %967, %969
  %970 = phi float [ 0.000000e+00, %967 ], [ %977, %969 ]
  %971 = phi i32 [ 0, %967 ], [ %978, %969 ]
  %972 = mul nsw i32 %971, %83
  %973 = add nsw i32 %972, %968
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds float, float* %966, i64 %974
  %976 = load float, float* %975, align 4, !tbaa !18
  %977 = fadd contract float %970, %976
  %978 = add nuw nsw i32 %971, 1
  %979 = icmp eq i32 %978, %85
  br i1 %979, label %980, label %969, !llvm.loop !64

980:                                              ; preds = %969
  %981 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %968
  store float %977, float addrspace(3)* %981, align 4, !tbaa !18
  %982 = add nuw nsw i32 %968, 64
  %983 = icmp slt i32 %982, %83
  br i1 %983, label %967, label %989, !llvm.loop !65

984:                                              ; preds = %962, %984
  %985 = phi i32 [ %987, %984 ], [ %113, %962 ]
  %986 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %985
  store float 0.000000e+00, float addrspace(3)* %986, align 4, !tbaa !18
  %987 = add nuw nsw i32 %985, 64
  %988 = icmp slt i32 %987, %83
  br i1 %988, label %984, label %989, !llvm.loop !65

989:                                              ; preds = %984, %980, %960
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %990 = icmp eq i32 %113, 0
  br i1 %990, label %991, label %1037

991:                                              ; preds = %989
  store float 0.000000e+00, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !18
  %992 = icmp sgt i32 %17, 0
  br i1 %992, label %993, label %1119

993:                                              ; preds = %991
  %994 = add i32 %17, -1
  %995 = and i32 %17, 7
  %996 = icmp ult i32 %994, 7
  br i1 %996, label %1085, label %997

997:                                              ; preds = %993
  %998 = and i32 %17, -8
  br label %999

999:                                              ; preds = %999, %997
  %1000 = phi float [ 0.000000e+00, %997 ], [ %1033, %999 ]
  %1001 = phi i32 [ 0, %997 ], [ %1034, %999 ]
  %1002 = phi i32 [ %998, %997 ], [ %1035, %999 ]
  %1003 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1001
  %1004 = load float, float addrspace(3)* %1003, align 16, !tbaa !18
  %1005 = fadd contract float %1000, %1004
  %1006 = or i32 %1001, 1
  %1007 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1006
  %1008 = load float, float addrspace(3)* %1007, align 4, !tbaa !18
  %1009 = fadd contract float %1005, %1008
  %1010 = or i32 %1001, 2
  %1011 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1010
  %1012 = load float, float addrspace(3)* %1011, align 8, !tbaa !18
  %1013 = fadd contract float %1009, %1012
  %1014 = or i32 %1001, 3
  %1015 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1014
  %1016 = load float, float addrspace(3)* %1015, align 4, !tbaa !18
  %1017 = fadd contract float %1013, %1016
  %1018 = or i32 %1001, 4
  %1019 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1018
  %1020 = load float, float addrspace(3)* %1019, align 16, !tbaa !18
  %1021 = fadd contract float %1017, %1020
  %1022 = or i32 %1001, 5
  %1023 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1022
  %1024 = load float, float addrspace(3)* %1023, align 4, !tbaa !18
  %1025 = fadd contract float %1021, %1024
  %1026 = or i32 %1001, 6
  %1027 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1026
  %1028 = load float, float addrspace(3)* %1027, align 8, !tbaa !18
  %1029 = fadd contract float %1025, %1028
  %1030 = or i32 %1001, 7
  %1031 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1030
  %1032 = load float, float addrspace(3)* %1031, align 4, !tbaa !18
  %1033 = fadd contract float %1029, %1032
  %1034 = add nuw nsw i32 %1001, 8
  %1035 = add i32 %1002, -8
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1085, label %999, !llvm.loop !66

1037:                                             ; preds = %989
  %1038 = icmp eq i32 %113, 1
  br i1 %1038, label %1039, label %1119

1039:                                             ; preds = %1037
  store float 0.000000e+00, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum, align 4, !tbaa !18
  %1040 = icmp sgt i32 %85, 0
  br i1 %1040, label %1041, label %1119

1041:                                             ; preds = %1039
  %1042 = add i32 %85, -1
  %1043 = and i32 %85, 7
  %1044 = icmp ult i32 %1042, 7
  br i1 %1044, label %1102, label %1045

1045:                                             ; preds = %1041
  %1046 = and i32 %85, -8
  br label %1047

1047:                                             ; preds = %1047, %1045
  %1048 = phi float [ 0.000000e+00, %1045 ], [ %1081, %1047 ]
  %1049 = phi i32 [ 0, %1045 ], [ %1082, %1047 ]
  %1050 = phi i32 [ %1046, %1045 ], [ %1083, %1047 ]
  %1051 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1049
  %1052 = load float, float addrspace(3)* %1051, align 16, !tbaa !18
  %1053 = fadd contract float %1048, %1052
  %1054 = or i32 %1049, 1
  %1055 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1054
  %1056 = load float, float addrspace(3)* %1055, align 4, !tbaa !18
  %1057 = fadd contract float %1053, %1056
  %1058 = or i32 %1049, 2
  %1059 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1058
  %1060 = load float, float addrspace(3)* %1059, align 8, !tbaa !18
  %1061 = fadd contract float %1057, %1060
  %1062 = or i32 %1049, 3
  %1063 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1062
  %1064 = load float, float addrspace(3)* %1063, align 4, !tbaa !18
  %1065 = fadd contract float %1061, %1064
  %1066 = or i32 %1049, 4
  %1067 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1066
  %1068 = load float, float addrspace(3)* %1067, align 16, !tbaa !18
  %1069 = fadd contract float %1065, %1068
  %1070 = or i32 %1049, 5
  %1071 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1070
  %1072 = load float, float addrspace(3)* %1071, align 4, !tbaa !18
  %1073 = fadd contract float %1069, %1072
  %1074 = or i32 %1049, 6
  %1075 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1074
  %1076 = load float, float addrspace(3)* %1075, align 8, !tbaa !18
  %1077 = fadd contract float %1073, %1076
  %1078 = or i32 %1049, 7
  %1079 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1078
  %1080 = load float, float addrspace(3)* %1079, align 4, !tbaa !18
  %1081 = fadd contract float %1077, %1080
  %1082 = add nuw nsw i32 %1049, 8
  %1083 = add i32 %1050, -8
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1102, label %1047, !llvm.loop !67

1085:                                             ; preds = %999, %993
  %1086 = phi float [ undef, %993 ], [ %1033, %999 ]
  %1087 = phi float [ 0.000000e+00, %993 ], [ %1033, %999 ]
  %1088 = phi i32 [ 0, %993 ], [ %1034, %999 ]
  %1089 = icmp eq i32 %995, 0
  br i1 %1089, label %1100, label %1090

1090:                                             ; preds = %1085, %1090
  %1091 = phi float [ %1096, %1090 ], [ %1087, %1085 ]
  %1092 = phi i32 [ %1097, %1090 ], [ %1088, %1085 ]
  %1093 = phi i32 [ %1098, %1090 ], [ %995, %1085 ]
  %1094 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1092
  %1095 = load float, float addrspace(3)* %1094, align 4, !tbaa !18
  %1096 = fadd contract float %1091, %1095
  %1097 = add nuw nsw i32 %1092, 1
  %1098 = add i32 %1093, -1
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1090, !llvm.loop !68

1100:                                             ; preds = %1090, %1085
  %1101 = phi float [ %1086, %1085 ], [ %1096, %1090 ]
  store float %1101, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !18
  br label %1119

1102:                                             ; preds = %1047, %1041
  %1103 = phi float [ undef, %1041 ], [ %1081, %1047 ]
  %1104 = phi float [ 0.000000e+00, %1041 ], [ %1081, %1047 ]
  %1105 = phi i32 [ 0, %1041 ], [ %1082, %1047 ]
  %1106 = icmp eq i32 %1043, 0
  br i1 %1106, label %1117, label %1107

1107:                                             ; preds = %1102, %1107
  %1108 = phi float [ %1113, %1107 ], [ %1104, %1102 ]
  %1109 = phi i32 [ %1114, %1107 ], [ %1105, %1102 ]
  %1110 = phi i32 [ %1115, %1107 ], [ %1043, %1102 ]
  %1111 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1109
  %1112 = load float, float addrspace(3)* %1111, align 4, !tbaa !18
  %1113 = fadd contract float %1108, %1112
  %1114 = add nuw nsw i32 %1109, 1
  %1115 = add i32 %1110, -1
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1117, label %1107, !llvm.loop !70

1117:                                             ; preds = %1107, %1102
  %1118 = phi float [ %1103, %1102 ], [ %1113, %1107 ]
  store float %1118, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum, align 4, !tbaa !18
  br label %1119

1119:                                             ; preds = %1039, %1117, %991, %1100, %1037
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %990, label %1120, label %1173

1120:                                             ; preds = %1119
  %1121 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !18
  %1122 = sitofp i32 %19 to float
  %1123 = fdiv contract float %1121, %1122
  %1124 = fmul contract float %1123, %1123
  %1125 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum, align 4, !tbaa !18
  %1126 = fdiv contract float %1125, %1122
  %1127 = fsub contract float %1126, %1124
  %1128 = fcmp olt float %1127, 0x39F0000000000000
  %1129 = select i1 %1128, float 0x41F0000000000000, float 1.000000e+00
  %1130 = fmul float %1127, %1129
  %1131 = tail call float @llvm.sqrt.f32(float %1130) #4
  %1132 = bitcast float %1131 to i32
  %1133 = add nsw i32 %1132, -1
  %1134 = bitcast i32 %1133 to float
  %1135 = add nsw i32 %1132, 1
  %1136 = bitcast i32 %1135 to float
  %1137 = tail call i1 @llvm.amdgcn.class.f32(float %1130, i32 608) #4
  %1138 = select i1 %1128, float 0x3EF0000000000000, float 1.000000e+00
  %1139 = fneg float %1136
  %1140 = tail call float @llvm.fma.f32(float %1139, float %1131, float %1130) #4
  %1141 = fcmp ogt float %1140, 0.000000e+00
  %1142 = fneg float %1134
  %1143 = tail call float @llvm.fma.f32(float %1142, float %1131, float %1130) #4
  %1144 = fcmp ole float %1143, 0.000000e+00
  %1145 = select i1 %1144, float %1134, float %1131
  %1146 = select i1 %1141, float %1136, float %1145
  %1147 = fmul float %1138, %1146
  %1148 = select i1 %1137, float %1130, float %1147
  %1149 = add nsw i32 %19, -1
  %1150 = sitofp i32 %1149 to float
  %1151 = icmp slt i32 %19, 2
  %1152 = select i1 %1151, float 0x41F0000000000000, float 1.000000e+00
  %1153 = fmul float %1152, %1150
  %1154 = tail call float @llvm.sqrt.f32(float %1153) #4
  %1155 = bitcast float %1154 to i32
  %1156 = add nsw i32 %1155, -1
  %1157 = bitcast i32 %1156 to float
  %1158 = add nsw i32 %1155, 1
  %1159 = bitcast i32 %1158 to float
  %1160 = tail call i1 @llvm.amdgcn.class.f32(float %1153, i32 608) #4
  %1161 = select i1 %1151, float 0x3EF0000000000000, float 1.000000e+00
  %1162 = fneg float %1159
  %1163 = tail call float @llvm.fma.f32(float %1162, float %1154, float %1153) #4
  %1164 = fcmp ogt float %1163, 0.000000e+00
  %1165 = fneg float %1157
  %1166 = tail call float @llvm.fma.f32(float %1165, float %1154, float %1153) #4
  %1167 = fcmp ole float %1166, 0.000000e+00
  %1168 = select i1 %1167, float %1157, float %1154
  %1169 = select i1 %1164, float %1159, float %1168
  %1170 = fmul float %1161, %1169
  %1171 = select i1 %1160, float %1153, float %1170
  %1172 = fmul contract float %1171, %1148
  store float %1172, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT, align 4, !tbaa !18
  br label %1173

1173:                                             ; preds = %1120, %1119
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %558, label %1174, label %1186

1174:                                             ; preds = %1173
  %1175 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %1176 = load float*, float* addrspace(1)* %1175, align 8, !tbaa !56
  %1177 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT, align 4, !tbaa !18
  br label %1178

1178:                                             ; preds = %1174, %1178
  %1179 = phi i32 [ %113, %1174 ], [ %1184, %1178 ]
  %1180 = zext i32 %1179 to i64
  %1181 = getelementptr inbounds float, float* %1176, i64 %1180
  %1182 = load float, float* %1181, align 4, !tbaa !18
  %1183 = fmul contract float %1182, %1177
  store float %1183, float* %1181, align 4, !tbaa !18
  %1184 = add nuw nsw i32 %1179, 64
  %1185 = icmp slt i32 %1184, %75
  br i1 %1185, label %1178, label %1186, !llvm.loop !71

1186:                                             ; preds = %1178, %1173
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %275, label %1187, label %1206

1187:                                             ; preds = %1186
  %1188 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 8
  %1189 = load float*, float* addrspace(1)* %1188, align 8, !tbaa !25
  %1190 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 14
  %1191 = load float*, float* addrspace(1)* %1190, align 8, !tbaa !42
  %1192 = sitofp i32 %19 to float
  %1193 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !18
  br label %1194

1194:                                             ; preds = %1187, %1194
  %1195 = phi i32 [ %113, %1187 ], [ %1204, %1194 ]
  %1196 = zext i32 %1195 to i64
  %1197 = getelementptr inbounds float, float* %1189, i64 %1196
  %1198 = load float, float* %1197, align 4, !tbaa !18
  %1199 = getelementptr inbounds float, float* %1191, i64 %1196
  %1200 = load float, float* %1199, align 4, !tbaa !18
  %1201 = fmul contract float %1200, %1193
  %1202 = fdiv contract float %1201, %1192
  %1203 = fsub contract float %1198, %1202
  store float %1203, float* %1197, align 4, !tbaa !18
  %1204 = add nuw nsw i32 %1195, 64
  %1205 = icmp slt i32 %1204, %29
  br i1 %1205, label %1194, label %1206, !llvm.loop !72

1206:                                             ; preds = %1194, %1186
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %558, label %1207, label %1222

1207:                                             ; preds = %1206
  %1208 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 8
  %1209 = load float*, float* addrspace(1)* %1208, align 8, !tbaa !25
  %1210 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %1211 = load float*, float* addrspace(1)* %1210, align 8, !tbaa !56
  br label %1212

1212:                                             ; preds = %1207, %1212
  %1213 = phi i32 [ %113, %1207 ], [ %1220, %1212 ]
  %1214 = zext i32 %1213 to i64
  %1215 = getelementptr inbounds float, float* %1209, i64 %1214
  %1216 = load float, float* %1215, align 4, !tbaa !18
  %1217 = getelementptr inbounds float, float* %1211, i64 %1214
  %1218 = load float, float* %1217, align 4, !tbaa !18
  %1219 = fdiv contract float %1216, %1218
  store float %1219, float* %1217, align 4, !tbaa !18
  %1220 = add nuw nsw i32 %1213, 64
  %1221 = icmp slt i32 %1220, %75
  br i1 %1221, label %1212, label %1222, !llvm.loop !73

1222:                                             ; preds = %1212, %1206
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %1223 = add i32 %5, 1
  %1224 = add i32 %1223, %7
  %1225 = add nsw i32 %111, -1
  %1226 = load i32, i32 addrspace(1)* %197, align 8, !tbaa !12
  %1227 = mul nsw i32 %1226, %11
  %1228 = add nsw i32 %1225, %1227
  %1229 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 2
  %1230 = sext i32 %1228 to i64
  %1231 = sext i32 %1226 to i64
  %1232 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 3
  %1233 = icmp slt i32 %113, %93
  br i1 %1233, label %1234, label %1265

1234:                                             ; preds = %1222
  %1235 = load i32*, i32* addrspace(1)* %1232, align 8, !tbaa !17
  %1236 = getelementptr inbounds i32, i32* %1235, i64 %1230
  %1237 = load i32, i32* %1236, align 4, !tbaa !14
  %1238 = add nsw i32 %1237, %1224
  %1239 = load i32*, i32* addrspace(1)* %200, align 8, !tbaa !16
  %1240 = getelementptr inbounds i32, i32* %1239, i64 %1231
  %1241 = load i32, i32* %1240, align 4, !tbaa !14
  %1242 = xor i32 %1241, -1
  %1243 = add i32 %1238, %1242
  %1244 = load i32*, i32* addrspace(1)* %1229, align 8, !tbaa !15
  %1245 = getelementptr inbounds i32, i32* %1244, i64 %1230
  %1246 = load i32, i32* %1245, align 4, !tbaa !14
  %1247 = add nsw i32 %1246, %1224
  %1248 = load i32*, i32* addrspace(1)* %196, align 8, !tbaa !13
  %1249 = getelementptr inbounds i32, i32* %1248, i64 %1231
  %1250 = load i32, i32* %1249, align 4, !tbaa !14
  %1251 = xor i32 %1250, -1
  %1252 = add i32 %1247, %1251
  %1253 = mul nsw i32 %1243, %89
  %1254 = add nsw i32 %1252, %1253
  %1255 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 18
  %1256 = load float*, float* addrspace(1)* %1255, align 8, !tbaa !74
  br label %1257

1257:                                             ; preds = %1234, %1257
  %1258 = phi i32 [ %113, %1234 ], [ %1263, %1257 ]
  %1259 = icmp eq i32 %1258, %1254
  %1260 = zext i32 %1258 to i64
  %1261 = select i1 %1259, float 1.000000e+00, float 0.000000e+00
  %1262 = getelementptr inbounds float, float* %1256, i64 %1260
  store float %1261, float* %1262, align 4, !tbaa !18
  %1263 = add nuw nsw i32 %1258, 64
  %1264 = icmp slt i32 %1263, %93
  br i1 %1264, label %1257, label %1265, !llvm.loop !75

1265:                                             ; preds = %1257, %1222
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %1266 = icmp slt i32 %113, %103
  br i1 %1266, label %1267, label %1334

1267:                                             ; preds = %1265
  %1268 = sub i32 1, %97
  %1269 = sub i32 1, %95
  %1270 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 18
  %1271 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 16
  %1272 = load float*, float* addrspace(1)* %1271, align 8, !tbaa !56
  %1273 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 20
  %1274 = load float*, float* addrspace(1)* %1273, align 8, !tbaa !76
  br label %1275

1275:                                             ; preds = %1267, %1325
  %1276 = phi i32 [ %113, %1267 ], [ %1332, %1325 ]
  %1277 = add nuw nsw i32 %1276, 1
  %1278 = freeze i32 %1277
  %1279 = freeze i32 %99
  %1280 = sdiv i32 %1278, %1279
  %1281 = mul i32 %1280, %1279
  %1282 = sub i32 %1278, %1281
  %1283 = icmp eq i32 %1282, 0
  %1284 = xor i1 %1283, true
  %1285 = zext i1 %1284 to i32
  %1286 = select i1 %1283, i32 %99, i32 %1282
  %1287 = add i32 %1280, %107
  %1288 = add i32 %1287, %1285
  %1289 = icmp slt i32 %1288, %97
  %1290 = add i32 %1268, %1288
  %1291 = select i1 %1289, i32 1, i32 %1290
  %1292 = icmp slt i32 %91, %1288
  %1293 = select i1 %1292, i32 %91, i32 %1288
  %1294 = add nsw i32 %1286, %105
  %1295 = icmp slt i32 %1294, %95
  %1296 = add i32 %1269, %1294
  %1297 = select i1 %1295, i32 1, i32 %1296
  %1298 = icmp slt i32 %89, %1294
  %1299 = select i1 %1298, i32 %89, i32 %1294
  %1300 = icmp sgt i32 %1291, %1293
  br i1 %1300, label %1325, label %1301

1301:                                             ; preds = %1275
  %1302 = icmp sgt i32 %1297, %1299
  br label %1303

1303:                                             ; preds = %1301, %1321
  %1304 = phi i32 [ %1291, %1301 ], [ %1323, %1321 ]
  %1305 = phi float [ 0.000000e+00, %1301 ], [ %1322, %1321 ]
  br i1 %1302, label %1321, label %1306

1306:                                             ; preds = %1303
  %1307 = load float*, float* addrspace(1)* %1270, align 8, !tbaa !74
  %1308 = add nsw i32 %1304, -1
  %1309 = mul nsw i32 %1308, %89
  %1310 = add i32 %1309, -1
  br label %1311

1311:                                             ; preds = %1306, %1311
  %1312 = phi float [ %1305, %1306 ], [ %1318, %1311 ]
  %1313 = phi i32 [ %1297, %1306 ], [ %1319, %1311 ]
  %1314 = add i32 %1310, %1313
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds float, float* %1307, i64 %1315
  %1317 = load float, float* %1316, align 4, !tbaa !18
  %1318 = fadd contract float %1312, %1317
  %1319 = add nsw i32 %1313, 1
  %1320 = icmp slt i32 %1313, %1299
  br i1 %1320, label %1311, label %1321, !llvm.loop !77

1321:                                             ; preds = %1311, %1303
  %1322 = phi float [ %1305, %1303 ], [ %1318, %1311 ]
  %1323 = add nsw i32 %1304, 1
  %1324 = icmp slt i32 %1304, %1293
  br i1 %1324, label %1303, label %1325, !llvm.loop !78

1325:                                             ; preds = %1321, %1275
  %1326 = phi float [ 0.000000e+00, %1275 ], [ %1322, %1321 ]
  %1327 = zext i32 %1276 to i64
  %1328 = getelementptr inbounds float, float* %1272, i64 %1327
  %1329 = load float, float* %1328, align 4, !tbaa !18
  %1330 = fmul contract float %1326, %1329
  %1331 = getelementptr inbounds float, float* %1274, i64 %1327
  store float %1330, float* %1331, align 4, !tbaa !18
  %1332 = add nuw nsw i32 %1276, 64
  %1333 = icmp slt i32 %1332, %103
  br i1 %1333, label %1275, label %1334, !llvm.loop !79

1334:                                             ; preds = %1325, %1265
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %1335 = icmp slt i32 %113, %99
  br i1 %1335, label %1336, label %1371

1336:                                             ; preds = %1334
  %1337 = icmp sgt i32 %101, 0
  br i1 %1337, label %1338, label %1365

1338:                                             ; preds = %1336
  %1339 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %195, i32 20
  %1340 = load float*, float* addrspace(1)* %1339, align 8, !tbaa !76
  br label %1341

1341:                                             ; preds = %1338, %1360
  %1342 = phi i32 [ %1363, %1360 ], [ %113, %1338 ]
  %1343 = phi i32 [ %1357, %1360 ], [ 0, %1338 ]
  %1344 = phi float [ %1356, %1360 ], [ 0.000000e+00, %1338 ]
  %1345 = mul nsw i32 %1342, %99
  br label %1346

1346:                                             ; preds = %1341, %1346
  %1347 = phi i32 [ %1343, %1341 ], [ %1357, %1346 ]
  %1348 = phi float [ %1344, %1341 ], [ %1356, %1346 ]
  %1349 = phi i32 [ 0, %1341 ], [ %1358, %1346 ]
  %1350 = add nsw i32 %1349, %1345
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds float, float* %1340, i64 %1351
  %1353 = load float, float* %1352, align 4, !tbaa !18
  %1354 = tail call float @llvm.fabs.f32(float %1353) #4
  %1355 = fcmp contract ogt float %1354, %1348
  %1356 = select i1 %1355, float %1354, float %1348
  %1357 = select i1 %1355, i32 %1350, i32 %1347
  %1358 = add nuw nsw i32 %1349, 1
  %1359 = icmp eq i32 %1358, %101
  br i1 %1359, label %1360, label %1346, !llvm.loop !80

1360:                                             ; preds = %1346
  %1361 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1342
  store i32 %1357, i32 addrspace(3)* %1361, align 4, !tbaa !14
  %1362 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1342
  store float %1356, float addrspace(3)* %1362, align 4, !tbaa !18
  %1363 = add nuw nsw i32 %1342, 64
  %1364 = icmp slt i32 %1363, %99
  br i1 %1364, label %1341, label %1371, !llvm.loop !81

1365:                                             ; preds = %1336, %1365
  %1366 = phi i32 [ %1369, %1365 ], [ %113, %1336 ]
  %1367 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1366
  store i32 0, i32 addrspace(3)* %1367, align 4, !tbaa !14
  %1368 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1366
  store float 0.000000e+00, float addrspace(3)* %1368, align 4, !tbaa !18
  %1369 = add nuw nsw i32 %1366, 64
  %1370 = icmp slt i32 %1369, %99
  br i1 %1370, label %1365, label %1371, !llvm.loop !81

1371:                                             ; preds = %1365, %1360, %1334
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %990, label %1372, label %1458

1372:                                             ; preds = %1371
  %1373 = icmp sgt i32 %99, 0
  br i1 %1373, label %1374, label %1421

1374:                                             ; preds = %1372
  %1375 = add i32 %99, -1
  %1376 = and i32 %99, 7
  %1377 = icmp ult i32 %1375, 7
  br i1 %1377, label %1398, label %1378

1378:                                             ; preds = %1374
  %1379 = and i32 %99, -8
  br label %1380

1380:                                             ; preds = %1596, %1378
  %1381 = phi i32 [ 0, %1378 ], [ %1598, %1596 ]
  %1382 = phi float [ 0.000000e+00, %1378 ], [ %1597, %1596 ]
  %1383 = phi i32 [ 0, %1378 ], [ %1599, %1596 ]
  %1384 = phi i32 [ %1379, %1378 ], [ %1600, %1596 ]
  %1385 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1383
  %1386 = load float, float addrspace(3)* %1385, align 16, !tbaa !18
  %1387 = fcmp contract ogt float %1386, %1382
  br i1 %1387, label %1388, label %1391

1388:                                             ; preds = %1380
  %1389 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1383
  %1390 = load i32, i32 addrspace(3)* %1389, align 16, !tbaa !14
  br label %1391

1391:                                             ; preds = %1380, %1388
  %1392 = phi float [ %1386, %1388 ], [ %1382, %1380 ]
  %1393 = phi i32 [ %1390, %1388 ], [ %1381, %1380 ]
  %1394 = or i32 %1383, 1
  %1395 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1394
  %1396 = load float, float addrspace(3)* %1395, align 4, !tbaa !18
  %1397 = fcmp contract ogt float %1396, %1392
  br i1 %1397, label %1533, label %1536

1398:                                             ; preds = %1596, %1374
  %1399 = phi i32 [ undef, %1374 ], [ %1598, %1596 ]
  %1400 = phi i32 [ 0, %1374 ], [ %1598, %1596 ]
  %1401 = phi float [ 0.000000e+00, %1374 ], [ %1597, %1596 ]
  %1402 = phi i32 [ 0, %1374 ], [ %1599, %1596 ]
  %1403 = icmp eq i32 %1376, 0
  br i1 %1403, label %1421, label %1404

1404:                                             ; preds = %1398, %1415
  %1405 = phi i32 [ %1417, %1415 ], [ %1400, %1398 ]
  %1406 = phi float [ %1416, %1415 ], [ %1401, %1398 ]
  %1407 = phi i32 [ %1418, %1415 ], [ %1402, %1398 ]
  %1408 = phi i32 [ %1419, %1415 ], [ %1376, %1398 ]
  %1409 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1407
  %1410 = load float, float addrspace(3)* %1409, align 4, !tbaa !18
  %1411 = fcmp contract ogt float %1410, %1406
  br i1 %1411, label %1412, label %1415

1412:                                             ; preds = %1404
  %1413 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1407
  %1414 = load i32, i32 addrspace(3)* %1413, align 4, !tbaa !14
  br label %1415

1415:                                             ; preds = %1412, %1404
  %1416 = phi float [ %1410, %1412 ], [ %1406, %1404 ]
  %1417 = phi i32 [ %1414, %1412 ], [ %1405, %1404 ]
  %1418 = add nuw nsw i32 %1407, 1
  %1419 = add i32 %1408, -1
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1421, label %1404, !llvm.loop !82

1421:                                             ; preds = %1398, %1415, %1372
  %1422 = phi i32 [ 0, %1372 ], [ %1399, %1398 ], [ %1417, %1415 ]
  %1423 = add nsw i32 %1422, 1
  %1424 = freeze i32 %1423
  %1425 = freeze i32 %99
  %1426 = sdiv i32 %1424, %1425
  %1427 = mul i32 %1426, %1425
  %1428 = sub i32 %1424, %1427
  %1429 = icmp eq i32 %1428, 0
  %1430 = select i1 %1429, i32 %99, i32 %1428
  %1431 = sext i1 %1429 to i32
  %1432 = sub i32 %7, %5
  %1433 = load i32, i32 addrspace(1)* %197, align 8, !tbaa !12
  %1434 = mul nsw i32 %1433, %11
  %1435 = add nsw i32 %1434, %111
  %1436 = load i32*, i32* addrspace(1)* %196, align 8, !tbaa !13
  %1437 = sext i32 %1433 to i64
  %1438 = getelementptr inbounds i32, i32* %1436, i64 %1437
  %1439 = load i32, i32* %1438, align 4, !tbaa !14
  %1440 = sub i32 %1432, %15
  %1441 = add i32 %1440, %1430
  %1442 = add i32 %1441, %1439
  %1443 = load i32*, i32* addrspace(1)* %1229, align 8, !tbaa !15
  %1444 = sext i32 %1435 to i64
  %1445 = getelementptr inbounds i32, i32* %1443, i64 %1444
  store i32 %1442, i32* %1445, align 4, !tbaa !14
  %1446 = load i32*, i32* addrspace(1)* %200, align 8, !tbaa !16
  %1447 = load i32, i32 addrspace(1)* %197, align 8, !tbaa !12
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds i32, i32* %1446, i64 %1448
  %1450 = load i32, i32* %1449, align 4, !tbaa !14
  %1451 = add i32 %1432, 1
  %1452 = sub i32 %1451, %17
  %1453 = add i32 %1452, %1426
  %1454 = add i32 %1453, %1431
  %1455 = add i32 %1454, %1450
  %1456 = load i32*, i32* addrspace(1)* %1232, align 8, !tbaa !17
  %1457 = getelementptr inbounds i32, i32* %1456, i64 %1444
  store i32 %1455, i32* %1457, align 4, !tbaa !14
  br label %1458

1458:                                             ; preds = %1421, %1371
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br label %1459

1459:                                             ; preds = %1458, %192
  %1460 = phi float* [ %247, %1458 ], [ %193, %192 ]
  %1461 = xor i1 %114, true
  %1462 = srem i32 %111, 10
  %1463 = icmp eq i32 %1462, 0
  %1464 = and i1 %1463, %1461
  br i1 %1464, label %1465, label %1532

1465:                                             ; preds = %1459
  %1466 = sext i32 %112 to i64
  %1467 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1466, i32 5
  %1468 = load i32, i32 addrspace(1)* %1467, align 8, !tbaa !12
  %1469 = mul nsw i32 %1468, %11
  %1470 = add nsw i32 %1469, %111
  %1471 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1466, i32 2
  %1472 = load i32*, i32* addrspace(1)* %1471, align 8, !tbaa !15
  %1473 = sext i32 %1470 to i64
  %1474 = getelementptr inbounds i32, i32* %1472, i64 %1473
  %1475 = load i32, i32* %1474, align 4, !tbaa !14
  %1476 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1466, i32 0
  %1477 = load i32*, i32* addrspace(1)* %1476, align 8, !tbaa !13
  %1478 = sext i32 %1468 to i64
  %1479 = getelementptr inbounds i32, i32* %1477, i64 %1478
  store i32 %1475, i32* %1479, align 4, !tbaa !14
  %1480 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1466, i32 3
  %1481 = load i32*, i32* addrspace(1)* %1480, align 8, !tbaa !17
  %1482 = getelementptr inbounds i32, i32* %1481, i64 %1473
  %1483 = load i32, i32* %1482, align 4, !tbaa !14
  %1484 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1466, i32 1
  %1485 = load i32*, i32* addrspace(1)* %1484, align 8, !tbaa !16
  %1486 = load i32, i32 addrspace(1)* %1467, align 8, !tbaa !12
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds i32, i32* %1485, i64 %1487
  store i32 %1483, i32* %1488, align 4, !tbaa !14
  %1489 = icmp slt i32 %113, %19
  br i1 %1489, label %1490, label %1532

1490:                                             ; preds = %1465
  %1491 = load i32, i32 addrspace(1)* %1467, align 8, !tbaa !12
  %1492 = sext i32 %1491 to i64
  %1493 = getelementptr inbounds i32, i32* %1477, i64 %1492
  %1494 = load i32, i32* %1493, align 4, !tbaa !14
  %1495 = getelementptr inbounds i32, i32* %1485, i64 %1492
  %1496 = load i32, i32* %1495, align 4, !tbaa !14
  %1497 = fpext float %9 to double
  %1498 = fsub contract double 1.000000e+00, %1497
  br label %1499

1499:                                             ; preds = %1490, %1499
  %1500 = phi i32 [ %113, %1490 ], [ %1530, %1499 ]
  %1501 = add nuw nsw i32 %1500, 1
  %1502 = freeze i32 %1501
  %1503 = freeze i32 %15
  %1504 = sdiv i32 %1502, %1503
  %1505 = mul i32 %1504, %1503
  %1506 = sub i32 %1502, %1505
  %1507 = icmp eq i32 %1506, 0
  %1508 = select i1 %1507, i32 %15, i32 %1506
  %1509 = sext i1 %1507 to i32
  %1510 = add i32 %1504, -26
  %1511 = add i32 %1510, %1509
  %1512 = add i32 %1511, %1496
  %1513 = mul nsw i32 %1512, %13
  %1514 = add i32 %1508, -27
  %1515 = add i32 %1514, %1494
  %1516 = add i32 %1515, %1513
  %1517 = zext i32 %1500 to i64
  %1518 = getelementptr inbounds float, float* %1460, i64 %1517
  %1519 = load float, float* %1518, align 4, !tbaa !18
  %1520 = fmul contract float %9, %1519
  %1521 = fpext float %1520 to double
  %1522 = sext i32 %1516 to i64
  %1523 = getelementptr inbounds float, float* %109, i64 %1522
  %1524 = addrspacecast float* %1523 to float addrspace(1)*
  %1525 = load float, float addrspace(1)* %1524, align 4, !tbaa !18
  %1526 = fpext float %1525 to double
  %1527 = fmul contract double %1498, %1526
  %1528 = fadd contract double %1527, %1521
  %1529 = fptrunc double %1528 to float
  store float %1529, float* %1518, align 4, !tbaa !18
  %1530 = add nuw nsw i32 %1500, 64
  %1531 = icmp slt i32 %1530, %19
  br i1 %1531, label %1499, label %1532, !llvm.loop !83

1532:                                             ; preds = %1499, %1465, %1459
  ret void

1533:                                             ; preds = %1391
  %1534 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1394
  %1535 = load i32, i32 addrspace(3)* %1534, align 4, !tbaa !14
  br label %1536

1536:                                             ; preds = %1533, %1391
  %1537 = phi float [ %1396, %1533 ], [ %1392, %1391 ]
  %1538 = phi i32 [ %1535, %1533 ], [ %1393, %1391 ]
  %1539 = or i32 %1383, 2
  %1540 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1539
  %1541 = load float, float addrspace(3)* %1540, align 8, !tbaa !18
  %1542 = fcmp contract ogt float %1541, %1537
  br i1 %1542, label %1543, label %1546

1543:                                             ; preds = %1536
  %1544 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1539
  %1545 = load i32, i32 addrspace(3)* %1544, align 8, !tbaa !14
  br label %1546

1546:                                             ; preds = %1543, %1536
  %1547 = phi float [ %1541, %1543 ], [ %1537, %1536 ]
  %1548 = phi i32 [ %1545, %1543 ], [ %1538, %1536 ]
  %1549 = or i32 %1383, 3
  %1550 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1549
  %1551 = load float, float addrspace(3)* %1550, align 4, !tbaa !18
  %1552 = fcmp contract ogt float %1551, %1547
  br i1 %1552, label %1553, label %1556

1553:                                             ; preds = %1546
  %1554 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1549
  %1555 = load i32, i32 addrspace(3)* %1554, align 4, !tbaa !14
  br label %1556

1556:                                             ; preds = %1553, %1546
  %1557 = phi float [ %1551, %1553 ], [ %1547, %1546 ]
  %1558 = phi i32 [ %1555, %1553 ], [ %1548, %1546 ]
  %1559 = or i32 %1383, 4
  %1560 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1559
  %1561 = load float, float addrspace(3)* %1560, align 16, !tbaa !18
  %1562 = fcmp contract ogt float %1561, %1557
  br i1 %1562, label %1563, label %1566

1563:                                             ; preds = %1556
  %1564 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1559
  %1565 = load i32, i32 addrspace(3)* %1564, align 16, !tbaa !14
  br label %1566

1566:                                             ; preds = %1563, %1556
  %1567 = phi float [ %1561, %1563 ], [ %1557, %1556 ]
  %1568 = phi i32 [ %1565, %1563 ], [ %1558, %1556 ]
  %1569 = or i32 %1383, 5
  %1570 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1569
  %1571 = load float, float addrspace(3)* %1570, align 4, !tbaa !18
  %1572 = fcmp contract ogt float %1571, %1567
  br i1 %1572, label %1573, label %1576

1573:                                             ; preds = %1566
  %1574 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1569
  %1575 = load i32, i32 addrspace(3)* %1574, align 4, !tbaa !14
  br label %1576

1576:                                             ; preds = %1573, %1566
  %1577 = phi float [ %1571, %1573 ], [ %1567, %1566 ]
  %1578 = phi i32 [ %1575, %1573 ], [ %1568, %1566 ]
  %1579 = or i32 %1383, 6
  %1580 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1579
  %1581 = load float, float addrspace(3)* %1580, align 8, !tbaa !18
  %1582 = fcmp contract ogt float %1581, %1577
  br i1 %1582, label %1583, label %1586

1583:                                             ; preds = %1576
  %1584 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1579
  %1585 = load i32, i32 addrspace(3)* %1584, align 8, !tbaa !14
  br label %1586

1586:                                             ; preds = %1583, %1576
  %1587 = phi float [ %1581, %1583 ], [ %1577, %1576 ]
  %1588 = phi i32 [ %1585, %1583 ], [ %1578, %1576 ]
  %1589 = or i32 %1383, 7
  %1590 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1589
  %1591 = load float, float addrspace(3)* %1590, align 4, !tbaa !18
  %1592 = fcmp contract ogt float %1591, %1587
  br i1 %1592, label %1593, label %1596

1593:                                             ; preds = %1586
  %1594 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1589
  %1595 = load i32, i32 addrspace(3)* %1594, align 4, !tbaa !14
  br label %1596

1596:                                             ; preds = %1593, %1586
  %1597 = phi float [ %1591, %1593 ], [ %1587, %1586 ]
  %1598 = phi i32 [ %1595, %1593 ], [ %1588, %1586 ]
  %1599 = add nuw nsw i32 %1383, 8
  %1600 = add i32 %1384, -8
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1398, label %1380, !llvm.loop !84
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
!29 = !{!6, !7, i64 72}
!30 = distinct !{!30, !21}
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
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = !{!6, !7, i64 136}
!75 = distinct !{!75, !21}
!76 = !{!6, !7, i64 152}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !69}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
