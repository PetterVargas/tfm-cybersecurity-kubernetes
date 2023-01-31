<div align="center">
  <h1>Networking</h1>
</div>

<div align="center">
  Para la integración de cada componente es necesario establecer la red
</div><br>

## Table of Content

- [Table of Content](#table-of-content)
- [Virtual Machine Network](#virtual-machine-network)
- [Pod Network](#pod-network)
- [Service Network](#service-network)


## Virtual Machine Network

La red usada para las máquinas virtuales es `192.168.56.0/24`.


## Pod Network

La red usada para asignar la dirección IP para el pods es `10.244.0.0/16`.


## Service Network

La red usada para asignar la dirección IP para los servicios de IP del cluster es `10.96.0.0/16`.


Anterior: [Remediación de Vulnerabilidades](07-remediacion-vulnerabilidades.md)<br>
Siguiente: [Aprovisionamiento de Recursos](09-aprovisionamiento-recursos.md)