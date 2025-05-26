```mermaid
%%{init: {'theme': 'neutral', 'fontFamily': 'Microsoft YaHei'}}%%
flowchart TD
    A[PLC设备] -->|S7/OPC UA/Modbus协议| B(数据采集层)
    B --> C{采集方式选择}
    C -->|直接协议读取| D[Python/Node-RED解析]
    C -->|通过SCADA中转| E[WinCC/Ignition归档]
    
    D --> F[数据清洗\n（去噪/单位转换）]
    E --> F
    
    F --> G{数据库选型}
    G -->|高频时序数据| H[InfluxDB]
    G -->|结构化数据| I[MySQL]
    G -->|工业系统集成| J[SQL Server]
    
    H & I & J --> K[数据可视化层]
    K -->|实时监控| L[Grafana]
    K -->|业务报表| M[Power BI]
    K -->|移动端查看| N[Mendix APP]
    
    L & M & N --> O{异常处理}
    O -->|数据超限| P[触发微信报警]
    O -->|设备离线| Q[记录故障日志]
    
    P & Q --> R[数据库持久化]
    R --> S[[END]]
    
    style A fill:#4CAF50,stroke:#388E3C
    style B fill:#2196F3,stroke:#0D47A1
    style K fill:#FF9800,stroke:#E65100
    style S fill:#9E9E9E,stroke:#424242
```

流程图说明
采集层

紫色模块：协议选择（西门子S7/OPC UA最常用）
蓝色分支：直接代码采集 vs SCADA中转
存储层

橙色决策框：根据数据类型选择数据库
InfluxDB适合振动频率等高频数据，MySQL适合工单记录
可视化层

黄色模块：不同工具侧重不同场景
Grafana实时看板效果示例：
Grafana面板

25.3℃

Unsupported markdown: blockquote
当前温度

绿色

红色报警

异常处理

红色路径：触发即时报警（微信/短信）
灰色路径：日志记录用于事后分析
关键点标注
绿色模块：物理设备层（PLC/传感器）
蓝色模块：数据流处理层
橙色模块：业务决策点
灰色模块：终止节点