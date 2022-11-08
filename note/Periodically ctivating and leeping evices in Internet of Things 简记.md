# 摘要

- **研究问题**：
  设备活动时间最小化问题(device active time minimization)
- **解决方案**:
  1.  Integer Linear Programming(ILP) --- 整数线性规划
	  IILP (Improved Integer Linear Programming) : 解决多项式时间内的优化问题
	该改进算法的缺点: 不能保证获得的是最优解
  2.  Two Pointers(TP算法): 
     TP算法基于遍历 (traverse-based), 可以获得最有解, 但是计算时间较长.
- **结论**:
  IILP 比 TP 快得多, TP 在有效性上优于IILP.
- 疑惑:
	1.  什么是 IILP 和 TP
	2.  traverse-based 是什么
	3.  什么是 polynomial time

# 介绍

  