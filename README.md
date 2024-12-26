# Lua Nested Table Traversal Bug

This repository demonstrates a subtle bug related to the order of iteration when using Lua's `pairs` function to traverse nested tables.  Lua's `pairs` iterator does not guarantee any specific order, which can lead to unexpected results in certain scenarios, particularly within recursive functions.

The `bug.lua` file contains a sample recursive function that attempts to process a nested table. Due to the unpredictable order of `pairs`, the function's output might vary across different Lua versions or even runs of the same version.

The `bugSolution.lua` file offers a solution that addresses the order issue by using a sorted table or implementing a custom iteration method that ensures a deterministic order.

## How to Reproduce
1. Clone this repository.
2. Run `bug.lua` using a Lua interpreter.
3. Observe the output and potentially run it several times to witness order variations. 

## Solution
The `bugSolution.lua` file provides a solution demonstrating how to ensure consistent and predictable order in such traversals.  For example, if the order is important you could use `ipairs` on numbered arrays or sort the keys before iteration.