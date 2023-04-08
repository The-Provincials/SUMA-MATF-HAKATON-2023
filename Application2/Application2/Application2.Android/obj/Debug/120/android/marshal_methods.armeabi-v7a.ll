; ModuleID = 'obj\Debug\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [188 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 53
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 83
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 77
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 67
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 67
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 34
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 68
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 32
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 48
	i32 232815796, ; 9: System.Web.Services => 0xde07cb4 => 92
	i32 261689757, ; 10: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 37
	i32 278686392, ; 11: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 52
	i32 280482487, ; 12: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 46
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 24
	i32 321597661, ; 14: System.Numerics => 0x132b30dd => 15
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 50
	i32 374355266, ; 16: Application2.Android.dll => 0x16503542 => 0
	i32 441335492, ; 17: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 36
	i32 442521989, ; 18: Xamarin.Essentials => 0x1a605985 => 76
	i32 450948140, ; 19: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 45
	i32 465846621, ; 20: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 21: System.dll => 0x1bff388e => 14
	i32 476646585, ; 22: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 46
	i32 486930444, ; 23: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 57
	i32 525008092, ; 24: SkiaSharp.dll => 0x1f4afcdc => 10
	i32 526420162, ; 25: System.Transactions.dll => 0x1f6088c2 => 87
	i32 605376203, ; 26: System.IO.Compression.FileSystem => 0x24154ecb => 90
	i32 627609679, ; 27: Xamarin.AndroidX.CustomView => 0x2568904f => 41
	i32 663517072, ; 28: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 73
	i32 666292255, ; 29: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 29
	i32 690569205, ; 30: System.Xml.Linq.dll => 0x29293ff5 => 19
	i32 775507847, ; 31: System.IO.Compression => 0x2e394f87 => 89
	i32 809851609, ; 32: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 33: Xamarin.AndroidX.Print => 0x3246f6cd => 64
	i32 928116545, ; 34: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 83
	i32 967690846, ; 35: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 50
	i32 974778368, ; 36: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 37: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 66
	i32 1035644815, ; 38: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 28
	i32 1038267912, ; 39: TouchTracking => 0x3de2b608 => 20
	i32 1042160112, ; 40: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 80
	i32 1052210849, ; 41: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 54
	i32 1098259244, ; 42: System => 0x41761b2c => 14
	i32 1175144683, ; 43: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 71
	i32 1178241025, ; 44: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 61
	i32 1204270330, ; 45: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 29
	i32 1241128902, ; 46: TouchTracking.dll => 0x49fa1fc6 => 20
	i32 1267360935, ; 47: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 72
	i32 1285473742, ; 48: TouchTracking.Forms => 0x4c9ec5ce => 22
	i32 1293217323, ; 49: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 43
	i32 1365406463, ; 50: System.ServiceModel.Internals.dll => 0x516272ff => 84
	i32 1376866003, ; 51: Xamarin.AndroidX.SavedState => 0x52114ed3 => 66
	i32 1395857551, ; 52: Xamarin.AndroidX.Media.dll => 0x5333188f => 58
	i32 1406073936, ; 53: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 38
	i32 1415632886, ; 54: Application2.Android => 0x5460d7f6 => 0
	i32 1434936421, ; 55: Application2 => 0x55876465 => 5
	i32 1447642393, ; 56: TouchTracking.Forms.Droid => 0x56494519 => 23
	i32 1460219004, ; 57: Xamarin.Forms.Xaml => 0x57092c7c => 81
	i32 1462112819, ; 58: System.IO.Compression.dll => 0x57261233 => 89
	i32 1469204771, ; 59: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 27
	i32 1582372066, ; 60: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 42
	i32 1583823701, ; 61: TouchTracking.Droid => 0x5e673b55 => 21
	i32 1592978981, ; 62: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 63: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 56
	i32 1624863272, ; 64: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 75
	i32 1636350590, ; 65: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 40
	i32 1639515021, ; 66: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 67: System.Runtime => 0x62c6282e => 17
	i32 1658241508, ; 68: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 69
	i32 1658251792, ; 69: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 82
	i32 1670060433, ; 70: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 37
	i32 1722051300, ; 71: SkiaSharp.Views.Forms => 0x66a46ae4 => 12
	i32 1729485958, ; 72: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 33
	i32 1766324549, ; 73: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 68
	i32 1776026572, ; 74: System.Core.dll => 0x69dc03cc => 13
	i32 1782808927, ; 75: Application2.dll => 0x6a43815f => 5
	i32 1788241197, ; 76: Xamarin.AndroidX.Fragment => 0x6a96652d => 45
	i32 1808609942, ; 77: Xamarin.AndroidX.Loader => 0x6bcd3296 => 56
	i32 1813201214, ; 78: Xamarin.Google.Android.Material => 0x6c13413e => 82
	i32 1818569960, ; 79: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 62
	i32 1867746548, ; 80: Xamarin.Essentials.dll => 0x6f538cf4 => 76
	i32 1878053835, ; 81: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 81
	i32 1885316902, ; 82: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 30
	i32 1918325493, ; 83: TouchTracking.Forms.Droid.dll => 0x725752f5 => 23
	i32 1919157823, ; 84: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 59
	i32 2019465201, ; 85: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 54
	i32 2055257422, ; 86: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 51
	i32 2079903147, ; 87: System.Runtime.dll => 0x7bf8cdab => 17
	i32 2090596640, ; 88: System.Numerics.Vectors => 0x7c9bf920 => 16
	i32 2097448633, ; 89: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 47
	i32 2113902067, ; 90: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 78
	i32 2126786730, ; 91: Xamarin.Forms.Platform.Android => 0x7ec430aa => 79
	i32 2201231467, ; 92: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 93: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 71
	i32 2244775296, ; 94: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 57
	i32 2256548716, ; 95: Xamarin.AndroidX.MultiDex => 0x8680336c => 59
	i32 2261435625, ; 96: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 49
	i32 2279755925, ; 97: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 65
	i32 2315684594, ; 98: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 25
	i32 2397082276, ; 99: Xamarin.Forms.PancakeView => 0x8ee092a4 => 78
	i32 2409053734, ; 100: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 63
	i32 2465532216, ; 101: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 36
	i32 2471841756, ; 102: netstandard.dll => 0x93554fdc => 85
	i32 2475788418, ; 103: Java.Interop.dll => 0x93918882 => 7
	i32 2501346920, ; 104: System.Data.DataSetExtensions => 0x95178668 => 88
	i32 2505896520, ; 105: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 53
	i32 2581819634, ; 106: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 72
	i32 2620871830, ; 107: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 40
	i32 2624644809, ; 108: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 44
	i32 2633051222, ; 109: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 52
	i32 2701096212, ; 110: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 69
	i32 2732626843, ; 111: Xamarin.AndroidX.Activity => 0xa2e0939b => 24
	i32 2737747696, ; 112: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 27
	i32 2766581644, ; 113: Xamarin.Forms.Core => 0xa4e6af8c => 77
	i32 2778768386, ; 114: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 74
	i32 2795602088, ; 115: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 11
	i32 2810250172, ; 116: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 38
	i32 2819470561, ; 117: System.Xml.dll => 0xa80db4e1 => 18
	i32 2853208004, ; 118: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 74
	i32 2855708567, ; 119: Xamarin.AndroidX.Transition => 0xaa36a797 => 70
	i32 2903344695, ; 120: System.ComponentModel.Composition => 0xad0d8637 => 91
	i32 2905242038, ; 121: mscorlib.dll => 0xad2a79b6 => 9
	i32 2912489636, ; 122: SkiaSharp.Views.Android => 0xad9910a4 => 11
	i32 2916838712, ; 123: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 75
	i32 2919462931, ; 124: System.Numerics.Vectors.dll => 0xae037813 => 16
	i32 2921128767, ; 125: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 26
	i32 2974793899, ; 126: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 12
	i32 2978675010, ; 127: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 43
	i32 3024354802, ; 128: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 48
	i32 3044182254, ; 129: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 130: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 60
	i32 3111772706, ; 131: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3204380047, ; 132: System.Data.dll => 0xbefef58f => 86
	i32 3211777861, ; 133: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 42
	i32 3218075837, ; 134: TouchTracking.Forms.dll => 0xbfcff0bd => 22
	i32 3220365878, ; 135: System.Threading => 0xbff2e236 => 2
	i32 3247949154, ; 136: Mono.Security => 0xc197c562 => 93
	i32 3258312781, ; 137: Xamarin.AndroidX.CardView => 0xc235e84d => 33
	i32 3267021929, ; 138: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 31
	i32 3317135071, ; 139: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 41
	i32 3317144872, ; 140: System.Data => 0xc5b79d28 => 86
	i32 3340387945, ; 141: SkiaSharp => 0xc71a4669 => 10
	i32 3340431453, ; 142: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 30
	i32 3346324047, ; 143: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 61
	i32 3353484488, ; 144: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 47
	i32 3362522851, ; 145: Xamarin.AndroidX.Core => 0xc86c06e3 => 39
	i32 3366347497, ; 146: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 147: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 65
	i32 3404865022, ; 148: System.ServiceModel.Internals => 0xcaf21dfe => 84
	i32 3429136800, ; 149: System.Xml => 0xcc6479a0 => 18
	i32 3430777524, ; 150: netstandard => 0xcc7d82b4 => 85
	i32 3441283291, ; 151: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 44
	i32 3476120550, ; 152: Mono.Android => 0xcf3163e6 => 8
	i32 3486566296, ; 153: System.Transactions => 0xcfd0c798 => 87
	i32 3493954962, ; 154: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 35
	i32 3501239056, ; 155: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 31
	i32 3509114376, ; 156: System.Xml.Linq => 0xd128d608 => 19
	i32 3536029504, ; 157: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 79
	i32 3567349600, ; 158: System.ComponentModel.Composition.dll => 0xd4a16f60 => 91
	i32 3618140916, ; 159: Xamarin.AndroidX.Preference => 0xd7a872f4 => 63
	i32 3627220390, ; 160: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 64
	i32 3632359727, ; 161: Xamarin.Forms.Platform => 0xd881692f => 80
	i32 3633644679, ; 162: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 26
	i32 3641597786, ; 163: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 51
	i32 3672681054, ; 164: Mono.Android.dll => 0xdae8aa5e => 8
	i32 3676310014, ; 165: System.Web.Services.dll => 0xdb2009fe => 92
	i32 3682565725, ; 166: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 32
	i32 3684561358, ; 167: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 35
	i32 3689375977, ; 168: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3718780102, ; 169: Xamarin.AndroidX.Annotation => 0xdda814c6 => 25
	i32 3724971120, ; 170: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 60
	i32 3758932259, ; 171: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 49
	i32 3786282454, ; 172: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 34
	i32 3822602673, ; 173: Xamarin.AndroidX.Media => 0xe3d849b1 => 58
	i32 3829621856, ; 174: System.Numerics.dll => 0xe4436460 => 15
	i32 3885922214, ; 175: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 70
	i32 3896760992, ; 176: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 39
	i32 3920810846, ; 177: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 90
	i32 3921031405, ; 178: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 73
	i32 3931092270, ; 179: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 62
	i32 3945713374, ; 180: System.Data.DataSetExtensions.dll => 0xeb2ecede => 88
	i32 3955647286, ; 181: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 28
	i32 3986687458, ; 182: TouchTracking.Droid.dll => 0xeda005e2 => 21
	i32 4073602200, ; 183: System.Threading.dll => 0xf2ce3c98 => 2
	i32 4105002889, ; 184: Mono.Security.dll => 0xf4ad5f89 => 93
	i32 4151237749, ; 185: System.Core => 0xf76edc75 => 13
	i32 4182413190, ; 186: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 55
	i32 4292120959 ; 187: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 55
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [188 x i32] [
	i32 53, i32 83, i32 77, i32 67, i32 67, i32 34, i32 68, i32 32, ; 0..7
	i32 48, i32 92, i32 37, i32 52, i32 46, i32 24, i32 15, i32 50, ; 8..15
	i32 0, i32 36, i32 76, i32 45, i32 9, i32 14, i32 46, i32 57, ; 16..23
	i32 10, i32 87, i32 90, i32 41, i32 73, i32 29, i32 19, i32 89, ; 24..31
	i32 1, i32 64, i32 83, i32 50, i32 6, i32 66, i32 28, i32 20, ; 32..39
	i32 80, i32 54, i32 14, i32 71, i32 61, i32 29, i32 20, i32 72, ; 40..47
	i32 22, i32 43, i32 84, i32 66, i32 58, i32 38, i32 0, i32 5, ; 48..55
	i32 23, i32 81, i32 89, i32 27, i32 42, i32 21, i32 4, i32 56, ; 56..63
	i32 75, i32 40, i32 3, i32 17, i32 69, i32 82, i32 37, i32 12, ; 64..71
	i32 33, i32 68, i32 13, i32 5, i32 45, i32 56, i32 82, i32 62, ; 72..79
	i32 76, i32 81, i32 30, i32 23, i32 59, i32 54, i32 51, i32 17, ; 80..87
	i32 16, i32 47, i32 78, i32 79, i32 3, i32 71, i32 57, i32 59, ; 88..95
	i32 49, i32 65, i32 25, i32 78, i32 63, i32 36, i32 85, i32 7, ; 96..103
	i32 88, i32 53, i32 72, i32 40, i32 44, i32 52, i32 69, i32 24, ; 104..111
	i32 27, i32 77, i32 74, i32 11, i32 38, i32 18, i32 74, i32 70, ; 112..119
	i32 91, i32 9, i32 11, i32 75, i32 16, i32 26, i32 12, i32 43, ; 120..127
	i32 48, i32 6, i32 60, i32 4, i32 86, i32 42, i32 22, i32 2, ; 128..135
	i32 93, i32 33, i32 31, i32 41, i32 86, i32 10, i32 30, i32 61, ; 136..143
	i32 47, i32 39, i32 7, i32 65, i32 84, i32 18, i32 85, i32 44, ; 144..151
	i32 8, i32 87, i32 35, i32 31, i32 19, i32 79, i32 91, i32 63, ; 152..159
	i32 64, i32 80, i32 26, i32 51, i32 8, i32 92, i32 32, i32 35, ; 160..167
	i32 1, i32 25, i32 60, i32 49, i32 34, i32 58, i32 15, i32 70, ; 168..175
	i32 39, i32 90, i32 73, i32 62, i32 88, i32 28, i32 21, i32 2, ; 176..183
	i32 93, i32 13, i32 55, i32 55 ; 184..187
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
