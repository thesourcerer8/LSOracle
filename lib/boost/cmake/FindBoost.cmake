set(Boost_FOUND TRUE)
set(Boost_INCLUDE_DIRS
  ${CMAKE_SOURCE_DIR}/lib/boost/algorithm/include
  ${CMAKE_SOURCE_DIR}/lib/boost/any/include
  ${CMAKE_SOURCE_DIR}/lib/boost/array/include
  ${CMAKE_SOURCE_DIR}/lib/boost/array/include
  ${CMAKE_SOURCE_DIR}/lib/boost/assert/include
  ${CMAKE_SOURCE_DIR}/lib/boost/bind/include
  ${CMAKE_SOURCE_DIR}/lib/boost/concept_check/include
  ${CMAKE_SOURCE_DIR}/lib/boost/config/include
  ${CMAKE_SOURCE_DIR}/lib/boost/container/include
  ${CMAKE_SOURCE_DIR}/lib/boost/container_hash/include
  ${CMAKE_SOURCE_DIR}/lib/boost/conversion/include
  ${CMAKE_SOURCE_DIR}/lib/boost/core/include
  ${CMAKE_SOURCE_DIR}/lib/boost/detail/include
  ${CMAKE_SOURCE_DIR}/lib/boost/dynamic_bitset/include
  ${CMAKE_SOURCE_DIR}/lib/boost/exception/include
  ${CMAKE_SOURCE_DIR}/lib/boost/function/include
  ${CMAKE_SOURCE_DIR}/lib/boost/function_types/include
  ${CMAKE_SOURCE_DIR}/lib/boost/fusion/include
  ${CMAKE_SOURCE_DIR}/lib/boost/integer/include
  ${CMAKE_SOURCE_DIR}/lib/boost/intrusive/include
  ${CMAKE_SOURCE_DIR}/lib/boost/io/include
  ${CMAKE_SOURCE_DIR}/lib/boost/iterator/include
  ${CMAKE_SOURCE_DIR}/lib/boost/lexical_cast/include
  ${CMAKE_SOURCE_DIR}/lib/boost/move/include
  ${CMAKE_SOURCE_DIR}/lib/boost/mpl/include
  ${CMAKE_SOURCE_DIR}/lib/boost/numeric_conversion/include
  ${CMAKE_SOURCE_DIR}/lib/boost/optional/include
  ${CMAKE_SOURCE_DIR}/lib/boost/predef/include
  ${CMAKE_SOURCE_DIR}/lib/boost/preprocessor/include
  ${CMAKE_SOURCE_DIR}/lib/boost/program_options/include
  ${CMAKE_SOURCE_DIR}/lib/boost/range/include
  ${CMAKE_SOURCE_DIR}/lib/boost/regex/include
  ${CMAKE_SOURCE_DIR}/lib/boost/smart_ptr/include
  ${CMAKE_SOURCE_DIR}/lib/boost/static_assert/include
  ${CMAKE_SOURCE_DIR}/lib/boost/throw_exception/include
  ${CMAKE_SOURCE_DIR}/lib/boost/tokenizer/include
  ${CMAKE_SOURCE_DIR}/lib/boost/tuple/include
  ${CMAKE_SOURCE_DIR}/lib/boost/type_index/include
  ${CMAKE_SOURCE_DIR}/lib/boost/typeof/include
  ${CMAKE_SOURCE_DIR}/lib/boost/type_traits/include
  ${CMAKE_SOURCE_DIR}/lib/boost/unordered/include
  ${CMAKE_SOURCE_DIR}/lib/boost/utility/include
  ${CMAKE_SOURCE_DIR}/lib/boost/winapi/include)
set(Boost_LIBRARIES
  Boost::any
  Boost::algorithm
  Boost::array
  Boost::assert
  Boost::bind
  Boost::concept_check
  Boost::config
  Boost::container
  Boost::container_hash
  Boost::conversion
  Boost::core
  Boost::detail
  Boost::dynamic_bitset
  Boost::exception
  "Boost::function"
  Boost::function_types
  Boost::fusion
  Boost::integer
  Boost::intrusive
  Boost::io
  Boost::iterator
  Boost::lexical_cast
  Boost::move
  Boost::mpl
  Boost::numeric_conversion
  Boost::optional
  Boost::predef
  Boost::preprocessor
  Boost::program_options
  Boost::range
  Boost::regex
  Boost::smart_ptr
  Boost::static_assert
  Boost::throw_exception
  Boost::tokenizer
  Boost::tuple
  Boost::type_index
  Boost::typeof
  Boost::type_traits
  Boost::unordered
  Boost::utility
  Boost::winapi)
