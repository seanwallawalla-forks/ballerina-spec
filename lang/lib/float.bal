// Copyright (c) 2019 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// IEEE refers to IEEE 754
// Constants

# The number π
public const float PI = 3.141592653589793;
# Euler's number
public const float E =  2.718281828459045;
# IEEE not-a-number value
public const float NaN = 0.0/0.0;

# IEEE positive infinity
public const float Infinity = 1.0/0.0;

# Tests whether a float is finite.
# Exactly one of isFinite, isInfinite and IsNaN will be true for any float value
#
# + x - the float to be tested
# + return - true if `x` is finite, i.e. neither NaN nor +∞ nor -∞
public function isFinite(float x) returns boolean = external;

# Tests whether a float is infinite.
# Exactly one of isFinite, isInfinite and IsNaN will be true for any float value
#
# + x - the float to be tested
# + return - true if `x` is either +∞ nor -∞
public function isInfinite(float x) returns boolean = external;

# Tests whether a float is NaN.
# Exactly one of isFinite, isInfinite and IsNaN will be true for any float value.
#
# + x - the float to be tested
# + return - true if `x` is NaN
public function isNaN(float x) returns boolean = external;

# Sum of all the arguments.
# (positive)0.0 if no args
# NaN if any arg is NaN
#
# + xs - float numbers to sum
# + return - sum of the parameters
public function sum(float... xs) returns float = external;

# Maximum of all the arguments.
# Result is -∞ if no args
# NaN if any arg is NaN
#
# + xs - parameters to check for max value
# + return - maximum value of all provided values
public function max(float... xs) returns float = external;

# Minimum of all the arguments.
# Result is +∞ if no args
# NaN if any arg is NaN
#
# + xs - parameters to check for min value
# + return - minimum value of all provided values
public function min(float... xs) returns float = external;

# IEEE abs operation.
#
# + x - whose absolute value is to be determined
# + return - absolute value of the argument
public function abs(float x) returns float = external;

# Floating point value that is a mathematical integer and closest to `x`.
# If there are two such integers, choose the one that is even
# (this is the round-to-nearest rounding mode, which is the default for IEEE and for Ballerina).
# Same as Java Math.rint method
# Same as .NET Math.Round method
# IEEE roundToIntegralTiesToEven operation
# Note that `<int>x` is the same as `<int>x.round()`
#
# + x - whose value to be rounded
# + return - rounded value
public function round(float x) returns float = external;

# Largest (closest to +∞) floating point value not greater than `x` that is a mathematical integer
#
# + x - whose value to be floored
# + return - floored value
public function floor(float x) returns float = external;

# Smallest (closest to -∞) floating point value not less than `x` that is a mathematical integer
#
# + x - value to performe ceiling on
# + return - integer ceiling value of the argument in float
public function ceiling(float x) returns float = external;

# IEEE squareRoot operation.
#
# + x - value to performe squareRoot operation on
# + return - squareRoot of the argument
public function sqrt(float x) returns float = external;

# Cube root.
# IEEE rootn(x, 3)
#
# + x - value to performe cube root operation on
# + return - cube root of the argument
public function cbrt(float x) returns float = external;

# `x` to the power of `y`.
# IEEE pow(x, y)
#
# + x - base value
# + y - the exponent
# + return - `x` raise to the power of `y`
public function pow(float x, float y) returns float = external;

# Natural logarithm.
# IEEE log operation
#
# + x - value to take log
# + return - natural logarithm of `x`
public function log(float x) returns float = external;

# Base 10 log.
# IEEE log10 operation
#
# + x - value to take log
# + return - base 10 logarithm of `x`
public function log10(float x) returns float = external;

# IEEE exp operation
#
# + x - exponent
# + return - Euler's number raised to the power `x`
public function exp(float x) returns float = external;

# IEEE sin operation
#
# + x - an angle, in radians
# + return - the sin of the argument
public function sin(float x) returns float = external;

# IEEE cos operation
#
# + x - an angle, in radians
# + return - the cos of the argument
public function cos(float x) returns float = external;

# IEEE tan operation
#
# + x - an angle, in radians
# + return - the tan of the argument
public function tan(float x) returns float = external;

# IEEE acos operation
#
# + x - a cos value
# + return - the arc cosine of the argument
public function acos(float x) returns float = external;

# IEEE atan operation
#
# + x - a tan value
# + return - the arc tan of the argument
public function atan(float x) returns float = external;

# IEEE asin operation
#
# + x - a sin value
# + return - the arc sin of the argument
public function asin(float x) returns float = external;

# IEEE atan2(y, x) operation
#
# + y - the ordinate coordinate
# + x - the abscissa coordinate
# + return - the angle component in polar coordinate
public function atan2(float y, float x) returns float = external;

# IEEE sinh operation
#
# + x - the number to take sinh
# + return - hyperbolic sin of `x`
public function sinh(float x) returns float = external;

# IEEE cosh operation
#
# + x - the number to take cosh
# + return - hyperbolic cos of x
public function cosh(float x) returns float = external;

# IEEE tanh operation
#
# + x - the number to take tanh
# + return - hyperbolic tangent of x
public function tanh(float x) returns float = external;

# Return the float value represented by `s`.
# `s` must follow the syntax of DecimalFloatingPointNumber as defined by the Ballerina specification
# with the following modifications
# - the DecimalFloatingPointNumber may have a leading `+` or `-` sign
# - `NaN` is allowed
# - `Infinity` is allowed with an optional leading `+` or `-` sign
# - a FloatingPointTypeSuffix is not allowed
# This is the inverse of `value:toString` applied to an `float`.
#
# + s - string representation of a float
# + return - float value or error
public function fromString(string s) returns float|error = external;

# Returns a string that represents `x` as a hexadecimal floating point number.
# The returned string will comply to the grammar of HexFloatingPointLiteral
# in the Ballerina spec with the following modifications:
# - it will have a leading `-` sign if negative
# - positive infinity will be represented by `Infinity`
# - negative infinity will be represented by `-Infinity`
# - NaN will be represented by `NaN`
# The representation includes `0x` for finite numbers.
#
# + x - float value
# + return - hexadecimal floating point hex string representation
public function toHexString(float x) returns string = external;

# Return the float value represented by `s`.
# `s` must follow the syntax of HexFloatingPointLiteral as defined by the Ballerina specification
# with the following modifications
# - the HexFloatingPointLiteral may have a leading `+` or `-` sign
# - `NaN` is allowed
# - `Infinity` is allowed with an optional leading `+` or `-` sign
#
# + s - hexadecimal floating point hex string representation
# + return - float value or error
public function fromHexString(string s) returns float|error = external;

# Returns IEEE 64-bit binary floating point format representation of `x` as an int.
#
# + x - float value
# + return - `x` bit pattern as an int
public function toBitsInt(float x) returns int = external;

# Returns the float that is represented in IEEE 64-bit floating point by `x`.
# All bit patterns that IEEE defines to be NaNs will all be mapped to the single float NaN value.
#
# + x - int value
# + return - `x` bit pattern as a float
public function fromBitsInt(int x) returns float = external;
