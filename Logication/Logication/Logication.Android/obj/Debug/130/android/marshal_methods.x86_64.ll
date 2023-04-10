; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [188 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 44
	i64 98846151832748230, ; 1: Logication => 0x15f2c0d2767c0c6 => 7
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 8
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 34
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 66
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 67
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 53
	i64 669987850381029454, ; 7: TouchTracking.dll => 0x94c466671c9f04e => 20
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 47
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 43
	i64 940822596282819491, ; 11: System.Transactions => 0xd0e792aa81923a3 => 87
	i64 996343623809489702, ; 12: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 80
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 93
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 82
	i64 1315114680217950157, ; 15: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 29
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1624659445732251991, ; 17: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 27
	i64 1628611045998245443, ; 18: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 55
	i64 1635332059230359587, ; 19: Logication.Android.dll => 0x16b1ddd7f03bd023 => 0
	i64 1636321030536304333, ; 20: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 48
	i64 1736570502774012983, ; 21: TouchTracking.Forms.Droid.dll => 0x181989abe9443c37 => 23
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 28
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 66
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 25
	i64 1981742497975770890, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 54
	i64 2136356949452311481, ; 26: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 59
	i64 2151148332558760495, ; 27: TouchTracking.Droid => 0x1dda6a02dd56ba2f => 21
	i64 2165725771938924357, ; 28: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 32
	i64 2262844636196693701, ; 29: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 43
	i64 2284400282711631002, ; 30: System.Web.Services => 0x1fb3d1f42fd4249a => 92
	i64 2329709569556905518, ; 31: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 51
	i64 2470498323731680442, ; 32: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 38
	i64 2479423007379663237, ; 33: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 71
	i64 2497223385847772520, ; 34: System.Runtime => 0x22a7eb7046413568 => 17
	i64 2547086958574651984, ; 35: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 24
	i64 2592350477072141967, ; 36: System.Xml.dll => 0x23f9e10627330e8f => 18
	i64 2624866290265602282, ; 37: mscorlib.dll => 0x246d65fbde2db8ea => 9
	i64 2694427813909235223, ; 38: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 63
	i64 2960931600190307745, ; 39: Xamarin.Forms.Core => 0x2917579a49927da1 => 77
	i64 3017704767998173186, ; 40: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 82
	i64 3289520064315143713, ; 41: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 50
	i64 3303437397778967116, ; 42: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 26
	i64 3311221304742556517, ; 43: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 16
	i64 3493805808809882663, ; 44: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 69
	i64 3522470458906976663, ; 45: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 68
	i64 3531994851595924923, ; 46: System.Numerics => 0x31042a9aade235bb => 15
	i64 3571415421602489686, ; 47: System.Runtime.dll => 0x319037675df7e556 => 17
	i64 3716579019761409177, ; 48: netstandard.dll => 0x3393f0ed5c8c5c99 => 85
	i64 3727469159507183293, ; 49: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 65
	i64 3772598417116884899, ; 50: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 44
	i64 4525561845656915374, ; 51: System.ServiceModel.Internals => 0x3ece06856b710dae => 84
	i64 4636684751163556186, ; 52: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 73
	i64 4782108999019072045, ; 53: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 31
	i64 4794310189461587505, ; 54: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 24
	i64 4795410492532947900, ; 55: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 68
	i64 5142919913060024034, ; 56: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 79
	i64 5203618020066742981, ; 57: Xamarin.Essentials => 0x4836f704f0e652c5 => 76
	i64 5205316157927637098, ; 58: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 57
	i64 5348796042099802469, ; 59: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 58
	i64 5375264076663995773, ; 60: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 78
	i64 5376510917114486089, ; 61: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 71
	i64 5408338804355907810, ; 62: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 70
	i64 5451019430259338467, ; 63: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 37
	i64 5507995362134886206, ; 64: System.Core.dll => 0x4c705499688c873e => 13
	i64 5692067934154308417, ; 65: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 75
	i64 5757522595884336624, ; 66: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 35
	i64 5814345312393086621, ; 67: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 63
	i64 5896680224035167651, ; 68: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 52
	i64 6085203216496545422, ; 69: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 80
	i64 6086316965293125504, ; 70: FormsViewGroup.dll => 0x5476f10882baef80 => 5
	i64 6319713645133255417, ; 71: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 53
	i64 6401687960814735282, ; 72: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 51
	i64 6504860066809920875, ; 73: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 32
	i64 6548213210057960872, ; 74: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 41
	i64 6591024623626361694, ; 75: System.Web.Services.dll => 0x5b7805f9751a1b5e => 92
	i64 6659513131007730089, ; 76: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 47
	i64 6671798237668743565, ; 77: SkiaSharp => 0x5c96fd260152998d => 10
	i64 6692141569559041558, ; 78: TouchTracking.Droid.dll => 0x5cdf434d10311616 => 21
	i64 6876862101832370452, ; 79: System.Xml.Linq => 0x5f6f85a57d108914 => 19
	i64 6894844156784520562, ; 80: System.Numerics.Vectors => 0x5faf683aead1ad72 => 16
	i64 7036436454368433159, ; 81: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 49
	i64 7103753931438454322, ; 82: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 46
	i64 7488575175965059935, ; 83: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 19
	i64 7635363394907363464, ; 84: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 77
	i64 7637365915383206639, ; 85: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 76
	i64 7654504624184590948, ; 86: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7820441508502274321, ; 87: System.Data => 0x6c87ca1e14ff8111 => 86
	i64 7836164640616011524, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 27
	i64 7927939710195668715, ; 89: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 11
	i64 8044118961405839122, ; 90: System.ComponentModel.Composition => 0x6fa2739369944712 => 91
	i64 8083354569033831015, ; 91: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 50
	i64 8103644804370223335, ; 92: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 88
	i64 8167236081217502503, ; 93: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 6
	i64 8187102936927221770, ; 94: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 12
	i64 8398329775253868912, ; 95: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 36
	i64 8400357532724379117, ; 96: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 62
	i64 8601935802264776013, ; 97: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 70
	i64 8626175481042262068, ; 98: Java.Interop => 0x77b654e585b55834 => 6
	i64 8639588376636138208, ; 99: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 61
	i64 8684531736582871431, ; 100: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 90
	i64 9037771699245123674, ; 101: Logication.Android => 0x7d6c9d79ee95885a => 0
	i64 9312692141327339315, ; 102: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 75
	i64 9324707631942237306, ; 103: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 28
	i64 9662334977499516867, ; 104: System.Numerics.dll => 0x8617827802b0cfc3 => 15
	i64 9678050649315576968, ; 105: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 38
	i64 9711637524876806384, ; 106: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 58
	i64 9808709177481450983, ; 107: Mono.Android.dll => 0x881f890734e555e7 => 8
	i64 9825649861376906464, ; 108: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 35
	i64 9834056768316610435, ; 109: System.Transactions.dll => 0x8879968718899783 => 87
	i64 9998632235833408227, ; 110: Mono.Security => 0x8ac2470b209ebae3 => 93
	i64 10038780035334861115, ; 111: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10229024438826829339, ; 112: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 41
	i64 10376576884623852283, ; 113: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 69
	i64 10430153318873392755, ; 114: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 39
	i64 10847732767863316357, ; 115: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 29
	i64 11023048688141570732, ; 116: System.Core => 0x98f9bc61168392ac => 13
	i64 11037814507248023548, ; 117: System.Xml => 0x992e31d0412bf7fc => 18
	i64 11162124722117608902, ; 118: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 74
	i64 11340910727871153756, ; 119: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 40
	i64 11392833485892708388, ; 120: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 64
	i64 11490413868324392536, ; 121: TouchTracking.Forms => 0x9f762688cfb28e58 => 22
	i64 11529969570048099689, ; 122: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 74
	i64 11578238080964724296, ; 123: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 49
	i64 11580057168383206117, ; 124: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 25
	i64 11597940890313164233, ; 125: netstandard => 0xa0f429ca8d1805c9 => 85
	i64 11672361001936329215, ; 126: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 46
	i64 12137774235383566651, ; 127: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 72
	i64 12451044538927396471, ; 128: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 45
	i64 12466513435562512481, ; 129: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 56
	i64 12487638416075308985, ; 130: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 42
	i64 12538491095302438457, ; 131: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 33
	i64 12550732019250633519, ; 132: System.IO.Compression => 0xae2d28465e8e1b2f => 89
	i64 12700543734426720211, ; 133: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 34
	i64 12963446364377008305, ; 134: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13370592475155966277, ; 135: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13401370062847626945, ; 136: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 72
	i64 13404347523447273790, ; 137: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 36
	i64 13454009404024712428, ; 138: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 83
	i64 13491513212026656886, ; 139: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 30
	i64 13492263892638604996, ; 140: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 12
	i64 13572454107664307259, ; 141: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 65
	i64 13647894001087880694, ; 142: System.Data.dll => 0xbd670f48cb071df6 => 86
	i64 13859323372566325622, ; 143: Logication.dll => 0xc056352d7115a976 => 7
	i64 13959074834287824816, ; 144: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 45
	i64 13967638549803255703, ; 145: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 79
	i64 14124974489674258913, ; 146: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 33
	i64 14125464355221830302, ; 147: System.Threading.dll => 0xc407bafdbc707a9e => 2
	i64 14172845254133543601, ; 148: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 59
	i64 14261073672896646636, ; 149: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 64
	i64 14486659737292545672, ; 150: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 52
	i64 14644440854989303794, ; 151: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 57
	i64 14792063746108907174, ; 152: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 83
	i64 14852515768018889994, ; 153: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 40
	i64 14987728460634540364, ; 154: System.IO.Compression.dll => 0xcfff1ba06622494c => 89
	i64 14988210264188246988, ; 155: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 42
	i64 15370334346939861994, ; 156: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 39
	i64 15582737692548360875, ; 157: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 55
	i64 15609085926864131306, ; 158: System.dll => 0xd89e9cf3334914ea => 14
	i64 15777549416145007739, ; 159: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 67
	i64 15810740023422282496, ; 160: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 81
	i64 15874926407689340882, ; 161: TouchTracking.Forms.Droid => 0xdc4f117575ca87d2 => 23
	i64 16154507427712707110, ; 162: System => 0xe03056ea4e39aa26 => 14
	i64 16324796876805858114, ; 163: SkiaSharp.dll => 0xe28d5444586b6342 => 10
	i64 16565028646146589191, ; 164: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 91
	i64 16621146507174665210, ; 165: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 37
	i64 16677317093839702854, ; 166: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 62
	i64 16713815680802155332, ; 167: TouchTracking.Forms.dll => 0xe7f366cedf90eb44 => 22
	i64 16822611501064131242, ; 168: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 88
	i64 16833383113903931215, ; 169: mscorlib => 0xe99c30c1484d7f4f => 9
	i64 17024911836938395553, ; 170: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 26
	i64 17031351772568316411, ; 171: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 60
	i64 17037200463775726619, ; 172: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 48
	i64 17544493274320527064, ; 173: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 31
	i64 17671790519499593115, ; 174: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 11
	i64 17704177640604968747, ; 175: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 56
	i64 17710060891934109755, ; 176: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 54
	i64 17827832363535584534, ; 177: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 78
	i64 17882897186074144999, ; 178: FormsViewGroup => 0xf82cd03e3ac830e7 => 5
	i64 17892495832318972303, ; 179: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 81
	i64 17928294245072900555, ; 180: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 90
	i64 18025913125965088385, ; 181: System.Threading => 0xfa28e87b91334681 => 2
	i64 18116111925905154859, ; 182: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 30
	i64 18121036031235206392, ; 183: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 60
	i64 18129453464017766560, ; 184: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 84
	i64 18230168502990540313, ; 185: TouchTracking => 0xfcfe91aa78440e19 => 20
	i64 18305135509493619199, ; 186: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 61
	i64 18380184030268848184 ; 187: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 73
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [188 x i32] [
	i32 44, i32 7, i32 8, i32 34, i32 66, i32 67, i32 53, i32 20, ; 0..7
	i32 1, i32 47, i32 43, i32 87, i32 80, i32 93, i32 82, i32 29, ; 8..15
	i32 4, i32 27, i32 55, i32 0, i32 48, i32 23, i32 28, i32 66, ; 16..23
	i32 25, i32 54, i32 59, i32 21, i32 32, i32 43, i32 92, i32 51, ; 24..31
	i32 38, i32 71, i32 17, i32 24, i32 18, i32 9, i32 63, i32 77, ; 32..39
	i32 82, i32 50, i32 26, i32 16, i32 69, i32 68, i32 15, i32 17, ; 40..47
	i32 85, i32 65, i32 44, i32 84, i32 73, i32 31, i32 24, i32 68, ; 48..55
	i32 79, i32 76, i32 57, i32 58, i32 78, i32 71, i32 70, i32 37, ; 56..63
	i32 13, i32 75, i32 35, i32 63, i32 52, i32 80, i32 5, i32 53, ; 64..71
	i32 51, i32 32, i32 41, i32 92, i32 47, i32 10, i32 21, i32 19, ; 72..79
	i32 16, i32 49, i32 46, i32 19, i32 77, i32 76, i32 3, i32 86, ; 80..87
	i32 27, i32 11, i32 91, i32 50, i32 88, i32 6, i32 12, i32 36, ; 88..95
	i32 62, i32 70, i32 6, i32 61, i32 90, i32 0, i32 75, i32 28, ; 96..103
	i32 15, i32 38, i32 58, i32 8, i32 35, i32 87, i32 93, i32 3, ; 104..111
	i32 41, i32 69, i32 39, i32 29, i32 13, i32 18, i32 74, i32 40, ; 112..119
	i32 64, i32 22, i32 74, i32 49, i32 25, i32 85, i32 46, i32 72, ; 120..127
	i32 45, i32 56, i32 42, i32 33, i32 89, i32 34, i32 1, i32 4, ; 128..135
	i32 72, i32 36, i32 83, i32 30, i32 12, i32 65, i32 86, i32 7, ; 136..143
	i32 45, i32 79, i32 33, i32 2, i32 59, i32 64, i32 52, i32 57, ; 144..151
	i32 83, i32 40, i32 89, i32 42, i32 39, i32 55, i32 14, i32 67, ; 152..159
	i32 81, i32 23, i32 14, i32 10, i32 91, i32 37, i32 62, i32 22, ; 160..167
	i32 88, i32 9, i32 26, i32 60, i32 48, i32 31, i32 11, i32 56, ; 168..175
	i32 54, i32 78, i32 5, i32 81, i32 90, i32 2, i32 30, i32 60, ; 176..183
	i32 84, i32 20, i32 61, i32 73 ; 184..187
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
