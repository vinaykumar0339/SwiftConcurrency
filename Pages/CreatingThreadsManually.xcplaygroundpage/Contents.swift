/*: [Previous](@previous)                                   [Home](Introduction)                                        [Next](@next)*/

/*: # What is Threading?
 Threading is a fundamental concept in programming that allows for the concurrent execution of code. By using multiple threads, you can perform multiple tasks simultaneously, improving the efficiency and performance of your application.
*/

/*: ## Why Use Threading?
* **Improved Performance:** Execute multiple operations in parallel.
* **Responsiveness:** Keep your application responsive by performing long-running tasks in the background.
* **Resource Utilization:** Make better use of system resources by distributing workloads.
*/

/*: # Thread API in Swift */

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class CustomThread {
    func createThreadUsingObjSelector() {
        let thread = Thread(target: self, selector: #selector(threadExecutor), object: nil)
        thread.start()
    }
    
    @objc private func threadExecutor() {
        print("Executing threadExecutor \(Thread.current)")
    }
    
    func createThreadUsingTrailingClosures() {
        let thread = Thread {
            print("Executing createThreadUsingTrailingClosures \(Thread.current)")
        }
        thread.start()
    }
}

let customThread = CustomThread()
customThread.createThreadUsingObjSelector()
customThread.createThreadUsingTrailingClosures()

/*: # Pros of using Manual Threads
1. **Fine-Grained Control:** You have complete control over thread creation, management, and execution (like start, cancel etc)
2. **Customization:** You can customize thread behavior to suit specific needs.
*/

/*: # Crons of using Manual Threads
1. **Resource Intensive:** Creating and managing many threads can be resource-intensive and may degrade performance if not managed properly.
2. **Scalability:** Manual threading may not scale well with the increasing complexity of applications.
3. More Power comes with higher responsibility.
4. Improper management may cause memory leak in app.
5. Managing Order of Execution.
*/
