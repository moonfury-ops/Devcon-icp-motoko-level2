import { portfolio_template_backend } from "../../declarations/portfolio_template_backend";

document.addEventListener("DOMContentLoaded", async () => {
    // Call the Motoko backend to increment and get the visitor count
    try {
        const visitCount = await portfolio_template_backend.recordVisit();

        // Update the visitor count in the DOM
        const visitorCountElement = document.querySelector(".visitor-count p");
        visitorCountElement.textContent = `Visitor count: ${visitCount}`;
    } catch (error) {
        console.error("Error fetching visitor count:", error);
    }
});
