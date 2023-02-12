## MLC(Machine Learning Compilation)课程作业

### 安装
[relax (next relay)](https://github.com/mlc-ai/relax.git)

[Docker镜像](https://hub.docker.com/repository/docker/tedder/mlc/general)

### 启动Jupyter
```shell
./launch.sh
```

### 目录
- 第一章 概述

- 第二章 张量程序抽象（TensorIR）
    1. 张量元函数(tvm.script.tir.prim_func)
    2. IRModule(tvm.ir.module.IRModule)
    2. Schedule(tvm.tir.Schedule)
    3. 编译运行IRModule（tvm.build）
    4. 张量表达式（tvm.te)

- 第三章 端到端模型执行（relax）
    1. tvm.script.relax.function(call_tir)
    2. extern prim_func
    3. bind params(tvm.relax.transform.BindParams)

- 第四章 自动程序优化（meta_schedule)
    1. sample_perfect_tile
    2. tune_tir
    3. space_generator
    4. 替换IRModule中的prim_func(update_func)

- 第五章 与机器学习框架整合（torch.fx)
    1. 张量表达式（tvm.te)
    2. BlockBuilder
    3. map call_function
    4. map call_module
    5. map to relax(暂时还不能build，需要先lowering到prim_func)

- 第七章 计算图优化
    1. tvm.relax.PyExprMutator
    2. lowering
    3. fuse tir

- 第六章 GPU硬件加速
    1. GPU常规优化
        - GPU线程绑定
        - GPU优化之Tile
        - GPU优化之Shared Memory(Cooperative Data Fetching)
    2. 专有设备优化（TensorCore）
        - register storage
        - tensorcore extern call
        - 汇编lowering（未完成）


