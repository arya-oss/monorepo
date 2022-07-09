from __future__ import print_function

from fastapi import FastAPI

from routes import router as api_router


def get_application() -> FastAPI:
    app = FastAPI(title="Sample App", version="1.0.0")
    app.include_router(api_router)
    return app


if __name__ == "__main__":
    import uvicorn
    application = get_application()
    uvicorn.run(application)