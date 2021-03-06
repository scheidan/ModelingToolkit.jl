using Documenter, ModelingToolkit

makedocs(
    sitename="ModelingToolkit.jl",
    authors="Chris Rackauckas",
    modules=[ModelingToolkit],
    clean=true,doctest=false,
    format = Documenter.HTML(#analytics = "UA-90474609-3",
                             assets = ["assets/favicon.ico"],
                             canonical="https://mtk.sciml.ai/stable/"),
    pages=[
        "Home" => "index.md",
        "Tutorials" => Any[
            "tutorials/ode_modeling.md",
            "tutorials/acausal_components.md",
            "tutorials/higher_order.md",
            "tutorials/nonlinear.md",
            "tutorials/modelingtoolkitize.md",
            "tutorials/optimization.md",
            "tutorials/stochastic_diffeq.md",
            "tutorials/nonlinear_optimal_control.md"
        ],
        "Basics" => Any[
            "basics/AbstractSystem.md",
            "basics/ContextualVariables.md",
            "basics/Composition.md",
            "basics/Validation.md",
            "basics/DependencyGraphs.md"
        ],
        "System Types" => Any[
            "systems/ODESystem.md",
            "systems/SDESystem.md",
            "systems/JumpSystem.md",
            "systems/NonlinearSystem.md",
            "systems/OptimizationSystem.md",
            "systems/ControlSystem.md",
            "systems/ReactionSystem.md",
            "systems/PDESystem.md",
        ],
        "comparison.md",
        "internals.md",
    ]
)

deploydocs(
   repo = "github.com/SciML/ModelingToolkit.jl.git";
   push_preview = true
)
