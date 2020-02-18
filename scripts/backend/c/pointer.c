#include <stdio.h>

// ポインタの目的：メモリの節約

// ポインタ:アドレスを格納するための変数
// メモリ：記憶領域
// &:アドレス演算子
// *：間接演算子


int main(void) {
  /* int型が占有するメモリ空間の数が表示されます */
  printf("int型が占有するメモリ空間の数：%d\n", sizeof(int));

  int a;
  a = 10;

  int *pa;  // ポインタ変数を宣言、４コマ分の領域をとってpaと名付ける
  pa = &a;  // アドレスを参照

  printf("%d\n", *pa);

  return 0;
}