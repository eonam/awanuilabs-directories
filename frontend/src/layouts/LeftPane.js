import { useMenu } from "../contexts/Menu"

export default function LeftPane({children}) {
  const { isMenuOpen } = useMenu()

  return <div className={`duration-300 ${isMenuOpen ? `` : `-translate-x-[340px]`} fixed md:relative z-40 w-[340px] md:-translate-x-0 h-dvh md:w-1/3 bg-white overflow-y-auto border-r`}>{children}</div>
}