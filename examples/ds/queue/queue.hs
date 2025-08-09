-- Define a custom data type for the Queue
data Queue a = Queue [a] deriving (Show)

-- Function to check if the queue is empty
isEmpty :: Queue a -> Bool
isEmpty (Queue []) = True
isEmpty _          = False

-- Function to enqueue an element into the queue
enqueue :: a -> Queue a -> Queue a
enqueue x (Queue xs) = Queue (xs ++ [x])

-- Function to dequeue an element from the queue
dequeue :: Queue a -> Maybe (a, Queue a)
dequeue (Queue [])     = Nothing
dequeue (Queue (x:xs)) = Just (x, Queue xs)

-- Function to get the front element of the queue
front :: Queue a -> Maybe a
front (Queue [])    = Nothing
front (Queue (x:_)) = Just x

main :: IO ()
main = do
    -- Create an empty queue
    let emptyQueue = Queue []

    -- Test isEmpty function
    putStrLn "Is the queue empty?"
    print (isEmpty emptyQueue)  -- Expected output: True

    -- Enqueue elements into the queue
    let queue1 = enqueue 1 emptyQueue
        queue2 = enqueue 2 queue1
        queue3 = enqueue 3 queue2

    -- Test isEmpty function after enqueueing elements
    putStrLn "\nIs the queue empty after enqueueing elements?"
    print (isEmpty queue3)  -- Expected output: False

    -- Test front function
    putStrLn "\nThe front element of the queue:"
    print (front queue3)  -- Expected output: Just 1

    -- Test dequeue function
    putStrLn "\nDequeueing an element from the queue:"
    case dequeue queue3 of
        Just (x, newQueue) -> do
            putStrLn $ "Dequeued element: " ++ show x
            putStrLn "Updated queue after dequeueing:"
            print newQueue  -- Expected output: Queue [2,3]
        Nothing -> putStrLn "Queue is empty, cannot dequeue."
