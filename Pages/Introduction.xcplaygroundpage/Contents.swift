/*: # What is Concurrency?
--------------------------
## In Real Life:
Concurrency in real life refers to the ability to handle multiple activities simultaneously within a given timeframe. This can be seen in various scenarios where multiple tasks are being managed at the same time.
### Examples:
* **Chef in a Kitchen:** A chef might be preparing several dishes simultaneously. While one dish is baking in the oven, the chef can chop vegetables for another dish. This is concurrent execution of tasks.
* **Office Work:** An employee might be handling emails, answering phone calls, and attending meetings throughout the day. These tasks overlap in time, demonstrating concurrency.
* **Traffic Management:** Traffic lights at an intersection manage the flow of cars from different directions. While cars move in one direction, others wait, and pedestrians might cross the street, all managed concurrently.
 
## In Programming:
 In programming, concurrency refers to the execution of multiple tasks or processes simultaneously, potentially overlapping in execution time. It is a way to structure a program to do multiple things at once, improving efficiency and performance.

### Examples:
* **Multithreading:** Running multiple threads within a single application. Each thread can perform a different task, such as fetching data from the network, processing user input, and updating the user interface.
* **Asynchronous Programming:** Using constructs like async/await to perform non-blocking operations. For instance, fetching data from a server while allowing the user interface to remain responsive.
* **Parallel Processing:** Executing multiple processes or computations simultaneously, often on different CPU cores. This is common in scientific computing, image processing, and machine learning tasks.
*/

/*: # What is Parallelism?
------
## In Real Life:
 Parallelism in real life refers to the simultaneous execution of multiple tasks by multiple resources. It involves doing multiple things at exactly the same time.
### Examples:
* **Construction Site:** Workers on a construction site performing different tasks simultaneously, such as one worker laying bricks while another installs windows.
* **Orchestra:** Different musicians playing their instruments at the same time to create a symphony.
* **Restaurant:** Multiple chefs in a restaurant kitchen cooking different dishes at the same time, each using different equipment

## Programming:
 In programming, parallelism refers to the simultaneous execution of multiple computations or processes. It typically involves dividing a task into subtasks that can be processed concurrently on multiple processors or cores.
### Examples:
* **Parallel Processing:** Running multiple computations simultaneously on different CPU cores to speed up processing time.
* **Parallel Algorithms:** Algorithms that divide a problem into subproblems that can be solved concurrently, like matrix multiplication or sorting algorithms.
* **Distributed Systems:** Multiple servers processing different parts of a task at the same time to handle large-scale computations, such as in data centers or cloud computing
*/

/*: # Concurrency vs Parallelism?
![Concurrency vs Parallelism](Concurrency_VS_Parallelism.png)
**Concurrency:** Two queues share one vending machine, serving one person at a time by alternating between queues.
**Parallelism:** Each queue has its own vending machine, allowing both queues to be served simultaneously.
> Note: Parallelism Will give more speed but it involes more CPU resource.
 
> Note: Because Parallelism involes more resources we need to find a way that concurrency can be achieved.
*/

/*: # How Can we Achieve Concurrency in iOS?
1. [Achieving multithreading by creating threads manually.](CreatingThreadsManually)
2. [GCD (Grand Central Dispatch)](GrandCentralDispatch(GCD))
3. Operation Queues
4. Modern Concurrency By Swift. (async and await)
*/
