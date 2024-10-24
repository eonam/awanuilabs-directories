import { useEffect } from "react"
import { useMenu } from "../contexts/Menu"

export default function MenuBackdrop() {
  const { isMenuOpen, setMenuOpen } = useMenu()

  const handleClick = () => {
    setMenuOpen(false)
  }

  return (
    <div 
      className={`duration-300 ${isMenuOpen ? `z-30 bg-gray-800 bg-opacity-75` : `z-[-1] bg-white bg-opacity-0`} md:z-[-1] h-full w-full absolute md:bg-white md:bg-opacity-0`}
      onClick={handleClick}
    >

    </div>
  )
}