// Copyright 2022 Google LLC.
// SPDX-License-Identifier: Apache-2.0

// ported from https://en.m.wikipedia.org/wiki/Gray_code
fn graydec(g: u8) -> u8 {
   let g = g ^ g >> 4;
   let g = g ^ g >> 2;
   let g = g ^ g >> 1;
   g
}

#![test]
fn inverter_test() {
  let _= assert_eq(graydec(u8:0b0000_0000), u8:0b0000_0000);
  let _= assert_eq(graydec(u8:0b0000_0001), u8:0b0000_0001);
  let _= assert_eq(graydec(u8:0b0000_0011), u8:0b0000_0010);
  let _= assert_eq(graydec(u8:0b0110_0000), u8:0b0100_0000);
  let _= assert_eq(graydec(u8:0b0100_0000), u8:0b0111_1111);
  _
}

pub fn user_module(io_in: u8) -> u8 {
  graydec(io_in)
}

