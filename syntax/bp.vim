" Vim filetype plugin file
" Language: Blueprint (https://source.android.com/docs/setup/reference/androidbp)

if exists('b:current_syntax')
  finish
endif

runtime! syntax/javascript.vim

let b:current_syntax = 'bp'

syn case match

" Predefined variables
syn keyword     gnPredefVar android
syn keyword     gnPredefVar arm arm64 x86 x86_64 mips mips64
hi def link     gnPredefVar         Constant

" Target declarations
syn keyword     bpTarget cc_defaults cc_test cc_library_headers cc_library_static cc_library_shared cc_library cc_binary
syn keyword     bpTarget prebuilt_etc genrule filegroup
syn keyword     bpTarget soong_namespace
hi def link     bpTarget            Type

" Buildfile functions
""syn keyword     bpFunctions
""hi def link     bpFunctions         Macro

" Variables
syn keyword     bpVariable name defaults srcs src vendor data sub_dir required imports filename_from_src target
syn keyword     bpVariable cflags export_cflags
syn keyword     bpVariable header_libs shared_libs static_libs runtime_libs
syn keyword     bpVariable export_include_dirs include_dirs
syn keyword     bpVariable init_rc
syn keyword     bpVariable relative_install_path compile_multilib arch
syn keyword     bpVariable export_c_includes export_static_lib_headers export_shared_lib_headers export_header_lib_headers
syn keyword     bpVariable vendor_available apex_available min_sdk_version sanitize version_script product_variables
syn keyword     bpVariable malloc_not_svelte host_supported
hi def link     bpVariable          Keyword
