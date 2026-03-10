# Operations Research Optimization Projects

Collection of **optimization models developed for the Operational Research course** in the **3rd year of the Software Engineering degree at the University of Minho**.

The repository contains two independent projects focused on classical optimization problems:

- Bin Packing
- Network Flow Optimization

Both projects explore modeling techniques used to solve resource allocation and network optimization problems.

---

# Projects

## 1. Bin Packing

The **Bin Packing Problem (BPP)** is a well-known optimization problem where a set of items must be packed into the minimum number of bins with fixed capacity.

### Objective

Minimize the number of bins used while respecting the capacity constraint of each bin.

### Topics explored

- packing optimization
- resource allocation
- combinatorial optimization
- algorithmic strategies for bin packing

The project analyzes possible approaches and discusses their efficiency when solving packing problems.

---

## 2. Network Flow Optimization

The second project studies a **maximum flow problem in a directed network with vertex capacity constraints**.

The goal is to determine the **maximum possible flow between a source and a destination vertex** while respecting all capacity restrictions in the network.

### Problem Description

The network contains:

- multiple vertices with capacity limits
- bidirectional edges
- a defined source and destination
- constraints on vertex capacities

To model the problem correctly, each vertex with limited capacity is **split into two nodes connected by an internal arc**, allowing the solver to enforce vertex capacity constraints. :contentReference[oaicite:1]{index=1}

### Solver

The optimization model is solved using the **Relax4 solver**, which solves **minimum cost flow problems**.

To transform the problem into a maximum flow formulation:

- arcs entering the destination node are assigned **negative costs**
- minimizing the total cost corresponds to **maximizing the flow reaching the destination**

### Results

The optimal solution found by the solver indicates a **maximum flow of 100 units between the source and the destination**. :contentReference[oaicite:2]{index=2}

The solution distributes the flow across two main paths in the network while respecting all capacity constraints.


# Technologies Used

- Optimization modeling
- Network flow theory
- Relax4 solver
- LaTeX for documentation

---

# Reports

The repository includes **academic reports written in LaTeX** describing:

- problem formulation
- mathematical modeling
- network transformation techniques
- solver configuration
- analysis of optimal solutions

---

# Author

Miguel Santos  
a72443

---

# Academic Context

Operational Research  
3rd Year – Software Engineering  
University of Minho
