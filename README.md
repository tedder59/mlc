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
    1. prim_func(tvm.script.tir.prim_func)
    2. Schedule(tvm.tir.Schedule)
    3. 编译运行IRModule（tvm.build）
    4. 张量表达式（tvm.te)
    
- 第三章 端到端模型执行（relax）
    1. relax script(tvm.script.relax)
    2. relax (tvm.relax)

- 第四章 自动程序优化（meta_schedule)
    1. sample_perfect_tile(tvm.tir.Schedule.sample_perfect_tile)
    2. tune_tir(tvm.meta_schedule.tune_tir)
    3. 替换IRModule中的prim_func

- 第五章 与机器学习框架整合（torch.fx -> IRModule)
    1. BlockBuilder
    2. function_map
    3. module_map
    4. map to high level script(tvm.script.relax)


- 第六章 GPU硬件加速
    1. GPU常规优化
        - GPU线程绑定
        - GPU优化之Tile
        - GPU优化之Shared Memory(Cooperative Data Fetching)
    2. 专有设备优化（TensorCore）
        - register storage
        - tensorcore extern call
        - 汇编lowering（未完成）

- 第七章 计算图优化
    1. tvm.relax.expr_functor.mutator(tvm.relax.PyExprMutator)
    2. tvm.ir.transform.module_pass
    3. lowering(tvm.script.relax.function -> tvm.script.relax.call_tir)
    4. fuse tir(tvm.script.relax.call_tir -> tvm.script.tir.prim_func)
    5. tvm.relax.build
