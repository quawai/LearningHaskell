import System.Environment
import System.IO

rStr :: Int -> String
rStr x = show x :: String

rInt :: String -> Int
rInt str = read str :: Int 



ack :: (Int, Int) -> Int
ack (m, n) | m == 0          = n + 1
           | m > 0 && n == 0 = ack (m - 1, 1)
           | otherwise       = ack (m-1, (ack (m, n-1)))

main = do
  n <- getLine
  print =<< return (rStr((ack((rInt n, 3)))))
