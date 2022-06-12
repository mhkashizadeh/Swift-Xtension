[![Swift](https://img.shields.io/badge/Swift-5.3-orange.svg)](https://swift.org)
![GitHub branch checks state](https://img.shields.io/github/checks-status/mhkashizadeh/Swift-Xtension/master?label=Build)
[![Swift](https://github.com/mhkashizadeh/Swift-Xtension/actions/workflows/swift.yml/badge.svg)](https://github.com/mhkashizadeh/Swift-Xtension/actions/workflows/swift.yml)
[![codecov](https://codecov.io/gh/mhkashizadeh/Swift-Xtension/branch/master/graph/badge.svg?token=T04LK9F4RP)](https://codecov.io/gh/mhkashizadeh/Swift-Xtension)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/mhkashizadeh/Swift-Xtension?label=Version)
![GitHub](https://img.shields.io/github/license/mhkashizadeh/Swift-Xtension)

# Xtension

Xtension is a collection of native Swift extensions

## Extension
<details>
  <summary>String</summary>
  </br>
  <ul>
    <li>Case Converter 
        <ul>
          <li>UpperCamelCase <code>"hello world".upperCamelCased</code></li>
          <li>lowerCamelCase <code>"hello world".lowerCamelCased</code></li>
          <li>lower_snake_case <code>"hello world".lowerSnakeCased</code></li>
          <li>UPPER_SNAKE_CASE <code>"hello world".upperSnakeCased</code></li>
          <li>kebeb-case <code>"hello world".kebabCased</code></li>
        </ul>
  </li>
  <li>Validation 
        <ul>
          <li>Regex <code>"hello world".validate(pattern: #"(\w)\s(\w)"#)</code></li>
          <li>Alphabet <code>"hello world".validate(pattern: .alphabet)</code></li>
          <li>Sentence <code>"hello world".validate(pattern: .sentence)</code></li>
          <li>Alphanumeric <code>"hello world".validate(pattern: .alphanumeric)</code></li>
          <li>Email <code>"mail@example.com".validate(pattern: .email)</code></li>
          <li>Url <code>"http://www.example.com".validate(pattern: .url)</code></li>
        </ul>
  </li>
  </ul>
</details>
