/*: [Previous](@previous)                                   [Home](Introduction)                                        [Next](@next)*/

/*: # Apple Dispatch Framework
> Dispatch: Execute code concurrently on multicore hardware by submitting work to dispatch queues managed by the system.
 
> Note: Dispatch is also known as Grand Central Dispatch (GCD)
 
1. GCD is a queue-based API that allows executing closures on worker's pools in First-In-First-Out (FIFO) Order
*/

/*: # What is GCD?
1. GCD manages the threads on which tasks are executed, relieving the developer of this responsibility, and ensuring tasks are run on the appropriate dispatch queue.
2. It is an abstraction layer on the queue.
3. GCD manages the collection of dispatch queues. The system executes the work submitted to those dispatch queues on the thread pool (worked tool).
4. GCD can execute the work in serially or concurrently. But always in FIFO Order.
*/

/*: # How Work is submitted to DispatchQueue.
1. Work can be submitted by using `block of code` or `Closures`.
2. It can be done by Synchronously or Asynchronously.
3. Don't be confuse bewteen `Serially or Concurrently` and `Synchronously or Asynchronously` will explain them in short.
*/

/*: # Serially or Concurrently vs Synchronously or Asynchronously
> Serially: one task at a time while dispatch the work to threads pool.
 
> Concurrently: multiple tasks at a time while dispatch the work to threads pool but in FIFO Order from the Dispatch Queue.
 
> Synchronously: Which blocks the current thread till it completes the task.
 
> Asynchronously: Which will not block the current thread and execute the task separately.
 
 
 Serially/Concurrently affects the DispatchQueue to which your dispatching...
 Synchronously/Asynchronously affects the current thread from which your dispatching...
 
 ![SerialDispatch](SerialDispatch.png)
 ![ConcurrentDispatch](ConcurrentDispatch.png)
*/


/*: # Will see now how to dispatch a block of work into Queue using DispatchQueue.main
1. There is one main Thread DispatchQueue for an App which is DispatchQueue.main
2. In Ios main DispatchQueue is sereial queue by default.
*/

/*: ## Dispatch an work using Asynchronous.*/

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// Which will be dispatching the block of code in asynchronous which will not block the current thread.
DispatchQueue.main.async {
    for i in 0...4 {
        print("DispatchQueue.main async first block \(i)")
    }
}

for i in 5...8 {
    print("normal file execution \(i)")
}

DispatchQueue.main.async {
    print("DispatchQueue.main async second block")
}

/*: ## Output.
 normal file execution 5
 normal file execution 6
 normal file execution 7
 normal file execution 8
 DispatchQueue.main async first block 0
 DispatchQueue.main async first block 1
 DispatchQueue.main async first block 2
 DispatchQueue.main async first block 3
 DispatchQueue.main async first block 4
 DispatchQueue.main async second block
*/

/*: # Explanation for the above code
1) 5, 6, 7, 8 will be print first because we are dispatching the code in asynchorous manner so main code execution will not be blocked.
2) 0, 1, 2, 3, 4 will be print next because there is no any other code to run in the current thread. so it start executing the async code because DispatchQueue.main is serial queue so it start printing `DispatchQueue.main async first block \(i)` and then `DispatchQueue.main async second block`
*/

/*: # Benifits of using GCD Over Plain Threads Api
## Abstraction of Complexity:
* GCD abstracts away the complexities of managing threads directly.
* You work with queues and tasks, making it easier to manage concurrency.
## Efficient Resource Management:
* GCD manages a pool of threads internally by taking most of the developer works for managing resources.
* Reduces overhead from thread creation and destruction, optimizing performance
## Quality of Service (QoS) Support: (Will talk about this in depth in upcoming posts)
* Supports QoS attributes (e.g., background, utility, user-initiated) to prioritize tasks
* Adapts dynamically to system load, ensuring optimal task scheduling
*/

/*: # Conclusion
 In summary, GCD simplifies concurrency management by abstracting thread handling, optimizing resource usage, ensuring safety, promoting asynchronous execution, and integrating well with Swift's ecosystem. It remains a preferred choice for efficient and scalable concurrent programming in iOS, macOS, and beyond
*/
