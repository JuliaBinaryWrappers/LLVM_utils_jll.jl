# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LLVM_utils_jll
using Base
using Base: UUID
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("LLVM_utils")
JLLWrappers.@generate_main_file("LLVM_utils", UUID("7464d292-bb96-5107-870f-256ce0e8f954"))
end  # module LLVM_utils_jll
