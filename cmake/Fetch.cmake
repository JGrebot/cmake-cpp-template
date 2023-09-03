#
# googletest
#
include(FetchContent)

FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

# Only done in test/CMakeLists.txt
# FetchContent_MakeAvailable(googletest)


#
# c4core submodule
# see https://github.com/biojppm/c4core
#

add_subdirectory(external/c4core)


